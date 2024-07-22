from django.urls import path
from .views import (
    BookListView,
    BookByGenreView,
    ReviewCreateView,
    ReviewUpdateView,
    ReviewDeleteView,
    suggest_books,
)

urlpatterns = [
    path('book/list/', BookListView.as_view(), name='book-list'),
    path('book/', BookByGenreView.as_view(), name='book-by-genre'),
    path('review/add/', ReviewCreateView.as_view(), name='review-add'),
    path('review/update/<int:pk>/', ReviewUpdateView.as_view(), name='review-update'),
    path('review/delete/<int:pk>/', ReviewDeleteView.as_view(), name='review-delete'),
    path('suggest/', suggest_books, name='suggest-books'),
]
