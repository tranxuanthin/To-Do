from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from .serializers import sigupSerializers
# Create your views here.
class TestAPIView(APIView):
    def get(seft,request):
        return Response("ok")

class sigup(APIView):
    def post(seft,request):
        data = sigupSerializers(data=request.data)
        # _username = request.POST['name']
        # _password = request.POST['password']
        # _email = request.POST['_email']
        # try:
        #     us = User.objects.get(username=_username)
        #     return Response("Opsss, Account already exists")
        # except:
        #     _user = User.objects.create_user(_username,_email,_password)
        #     _user.save()
        #     return Response("success")
        if not data.is_valid():
            return Response("Không đúng định dạng hoặc đã tồn tại")
        data.save()
        return Response("success")