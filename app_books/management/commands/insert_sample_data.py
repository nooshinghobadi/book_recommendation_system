from django.core.management.base import BaseCommand
from django.db import connection
from app_users.models import User

class Command(BaseCommand):
    help = 'Calls the insert_sample_data stored procedure'

    def handle(self, *args, **kwargs):
        users = [
            ('user1', 'password1'),
            ('user2', 'password2'),
            ('user3', 'password3'),
            ('user4', 'password4'),
            ('user5', 'password5'),
        ]

        for username, password in users:
            if not User.objects.filter(username=username).exists():
                User.objects.create_user(username=username, password=password)

        with connection.cursor() as cursor:
            cursor.execute("CALL insert_sample_books();")
            cursor.execute("CALL insert_sample_reviews();")

        self.stdout.write(self.style.SUCCESS('Successfully called stored procedure insert_sample_data'))
