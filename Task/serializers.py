
from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from rest_framework.response import Response
from .models import Task
from Task import models
class sigupSerializers(serializers.ModelSerializer):
    # username = serializers.CharField(required=True)
    # password = serializers.CharField(required=True)
    # email = serializers.EmailField(required=True)
   class Meta:
        model = User
        fields = ['username', 'password', 'email']
class userSerializers(serializers.ModelSerializer):
    # username = serializers.CharField(required=True)
    # password = serializers.CharField(required=True)
    # email = serializers.EmailField(required=True)
   class Meta:
        model = User
        fields = ['username', 'email']
class taskSerializers(serializers.ModelSerializer):
    class Meta:
        model = Task
        fields = ['id','name','decription','iduser','dateofcompletion','status','dateofcreation','dateofmodification']
       