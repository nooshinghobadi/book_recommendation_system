from rest_framework import generics, permissions
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from app_books.services.recommend_books import suggest_books_for_user
from .serializers import BookSerializer, ReviewSerializer, CreateReviewSerializer
from .models import Book, Review

class BookListView(generics.ListAPIView):
    queryset = Book.objects.all()
    serializer_class = BookSerializer
    permission_classes = [permissions.IsAuthenticated]

class BookByGenreView(generics.ListAPIView):
    serializer_class = BookSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        genre = self.request.query_params.get('genre')
        return Book.objects.filter(genre=genre)

class ReviewCreateView(generics.CreateAPIView):
    queryset = Review.objects.all()
    serializer_class = CreateReviewSerializer
    permission_classes = [permissions.IsAuthenticated]
    
class ReviewUpdateView(generics.UpdateAPIView):
    queryset = Review.objects.all()
    serializer_class = ReviewSerializer
    permission_classes = [permissions.IsAuthenticated]
    lookup_field = 'pk'

class ReviewDeleteView(generics.DestroyAPIView):
    queryset = Review.objects.all()
    serializer_class = ReviewSerializer
    permission_classes = [permissions.IsAuthenticated]
    lookup_field = 'pk'

@api_view(['GET'])
@permission_classes([permissions.IsAuthenticated])
def suggest_books(request):
    suggestions = suggest_books_for_user(request.user.id)
    serializer = BookSerializer(suggestions, many=True)
    return Response(serializer.data)
