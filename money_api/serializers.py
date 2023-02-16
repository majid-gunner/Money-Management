from rest_framework import serializers


class HelloSerializer(serializers.Serializer):
    """Serialize name fields for testing out APIViews"""

    first_name = serializers.CharField(max_length=5)
    last_name = serializers.CharField(max_length=5)