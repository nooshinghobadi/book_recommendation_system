from django.db.models import Avg, Count
from app_books.models import Book, Review

def get_similar_users(user_id):
    """
    Finds users with similar review patterns to the given user.

    Args:
        user_id (int): The ID of the target user.

    Returns:
        QuerySet: A queryset of users who have reviewed at least three common books with the target user,
                  annotated with the count of common books and average rating difference.
    """
    # Get all reviews by the target user
    user_reviews = Review.objects.filter(user_id=user_id)
    # Get the IDs of the books reviewed by the target user
    user_book_ids = user_reviews.values_list('book_id', flat=True)
    
    # Find other users who have reviewed the same books
    similar_users = Review.objects.filter(book_id__in=user_book_ids).exclude(user_id=user_id).values('user_id').annotate(
        # Count the number of common books reviewed
        common_books=Count('book_id'),
        # Calculate the difference in average ratings for common books
        avg_rating_diff=Avg('rating') - Avg('rating')
    ).filter(common_books__gte=3).order_by('-common_books')
    
    return similar_users

def suggest_books_for_user(user_id):
    """
    Suggests books for the given user based on reviews from similar users.

    Args:
        user_id (int): The ID of the target user.

    Returns:
        QuerySet: A queryset of books suggested for the target user.
    """
    # Get similar users to the target user
    similar_users = get_similar_users(user_id)
    
    # If no similar users are found, return an empty queryset
    if not similar_users:
        return Book.objects.none()
    
    # Get the IDs of similar users
    similar_user_ids = [user['user_id'] for user in similar_users]
    
    # Get the IDs of books already reviewed by the target user
    user_reviewed_books = Review.objects.filter(user_id=user_id).values_list('book_id', flat=True)
    
    # Find books reviewed by similar users that the target user hasn't reviewed yet
    suggestions = Review.objects.filter(
        user_id__in=similar_user_ids
    ).exclude(
        book_id__in=user_reviewed_books
    ).values('book_id').annotate(
        # Calculate the average rating of each book
        avg_rating=Avg('rating')
    ).order_by('-avg_rating')
    
    # Extract the book IDs from the suggestions
    book_ids_to_suggest = [suggestion['book_id'] for suggestion in suggestions]
    
    # Return the books with the suggested book IDs
    return Book.objects.filter(id__in=book_ids_to_suggest)
