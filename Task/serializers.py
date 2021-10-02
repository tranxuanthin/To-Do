
from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from rest_framework.response import Response
class sigupSerializers(serializers.ModelSerializer):
    # username = serializers.CharField(required=True)
    # password = serializers.CharField(required=True)
    # email = serializers.EmailField(required=True)
   class Meta:
        model = User
        fields = ['username', 'password', 'email']