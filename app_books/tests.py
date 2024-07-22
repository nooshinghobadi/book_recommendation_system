from django.urls import reverse
from rest_framework.test import APITestCase
from django.test import TestCase
from rest_framework import status
from .models import Book, Review
from app_users.models import User
from rest_framework_simplejwt.tokens import RefreshToken

class BookTests(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword')
        self.book = Book.objects.create(title='Test Book', author='Test Author', genre='Fiction')
        self.token = self.get_token_for_user(self.user)
    
    def get_token_for_user(self, user):
        refresh = RefreshToken.for_user(user)
        return str(refresh.access_token)

    def authenticate(self):
        self.client.credentials(HTTP_AUTHORIZATION='Bearer ' + self.token)

    def test_list_books(self):
        self.authenticate()
        url = reverse('book-list')
        response = self.client.get(url, format='json')
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)
        self.assertEqual(response.data[0]['title'], 'Test Book')

    def test_add_review(self):
        self.authenticate()
        url = reverse('review-add')
        data = {'book': self.book.id, 'user': self.user.id, 'rating': 5}
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(Review.objects.count(), 1)
        self.assertEqual(Review.objects.get().rating, 5)
