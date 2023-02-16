from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status

from money_api import serializers



class HelloApiView(APIView):
    """Test API View"""
    serializer_class = serializers.HelloSerializer

    def get(self, request, format=None):
        """Returns a list of APIView"""
        print("\n\n\n****",request,"\n\n\n***")
        an_apiview = [
            'Uses HTTP methods as functions (get, post, patch, put, delete)',
            'Is similar to a traditional Django View',
            'Gives you the most control over your logic',
            'Is mapped manually to URLs',
        ]

        return Response({'message': 'Hello!', 'an_apiview': an_apiview})

    def post(self, request):
        """Create a hello message"""

        serializer = self.serializer_class(data=request.data)
        print ("\n\n", request.data,"\n\n")

        if serializer.is_valid():
            firs_name = serializer.validated_data.get('first_name')
            last_name = serializer.validated_data.get('last_name')

            name = firs_name + last_name
            
            return Response({'message':name})
        
        else:
            return Response(
                serializer.errors,
                status=status.HTTP_400_BAD_REQUEST
            )