from django.shortcuts import render
from rest_framework import serializers
from rest_framework.views import APIView
from rest_framework.response import Response
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
from .serializers import sigupSerializers,taskSerializers, userSerializers
from .models import Task
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response
import json
# Create your views here.
class getalltodo(APIView):
    def get(seft,request):
        data = Task.objects.all()
        jon = taskSerializers(data,many=True) 
        return Response(jon.data)
class getalluser(APIView):
    def get(seft,request):
        data = User.objects.all()
        jon = userSerializers(data,many=True) 
        return Response(jon.data)
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
class addtodo(APIView):
    def post(sefl,request):
        data = taskSerializers(data=request.data)
        print(data)
        if not data.is_valid():
            return Response("Không đúng định dạng hoặc đã tồn tại")
        data.save()
        return Response("success") 
class gettodobyid(APIView):
    def get(seft,request,id):
        
        try:
            data = Task.objects.get(id=id)
            jon = taskSerializers(data,many=False) 
            return Response(jon.data)
        except:
            return Response("Id does not exist")
class assigntodo(APIView):
    def put(self,request,id):
        # try:
            if(request.user.username==request.data['username']):
                return Response("Khong duoc assign cho minh")
            username = request.data['username']
            user = User.objects.get(username=username)
           
            task = Task.objects.get(id=id)
           
            task.iduser = user
           
            task.save()
          
            # userdata = assigntodoSerializers(data=request.data)
            # print(userdata)
            # data = json.loads(userdata)
            
            # if not userdata.is_valid():
            #     print(userdata.errors)
            #     return Response("Không đúng định dạng")
           
            # userdata.save()
            return Response("success") 
        # except:
        #     # print(data.getiduser())
        #     print(request.user.username)
        #     return Response("Id does not exist")
        
        # data.get("iduser") = #tạo phương thức hướng đối tượng trong model,method trong serializers
       

        

