from rest_framework import serializers
from money_api import models

class HelloSerializer(serializers.ModelSerializer):
    """ModelSerializer name fields for testing out APIViews"""

    class Meta:
        model = models.UserProfile

        fields = ['email', 'first_name', 'last_name', 'is_active', 'is_staff']