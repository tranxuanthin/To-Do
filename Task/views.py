from django.shortcuts import render
from rest_framework import serializers
from rest_framework import response
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
        id = request.data['id']
        try:
            task = Task.objects.get(id=id)
            return Response("id da ton tai")
        except:
            data = taskSerializers(data=request.data)
            if not data.is_valid():
                return Response("Không đúng định dạng")
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
            try:
                user = User.objects.get(username=username)
            except:
                return Response("Khong co user "+username)
            try:
                task = Task.objects.get(id=id)
            except:
                return Response("Khong co Task nay")
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
       
class updatetodo(APIView):
    def put(self,request):
        if(request.data['status']=="NEW"):
            id = request.data['id']
            try:
                task = Task.objects.get(id=id)
                task.name = request.data['name']
                task.decription = request.data['decription']
                try:
                    user = User.objects.get(id = request.data['iduser'])
                    task.iduser = user
                    
                except:
                    return Response("iduser khong ton tai")
                task.dateofcompletion = request.data['dateofcompletion']
                task.status= request.data['status']
                task.dateofcreation= request.data['dateofcreation']
                task.dateofmodification= request.data['dateofmodification']
                task.save()
                print(1)
                return Response("cap nhat task thanh cong" )
            except:
                data = taskSerializers(data=request.data)
                if not data.is_valid():
                    return Response("Không đúng định dạng")
                data.save()
                return Response("Id task chua ton tai nen da tao moi task moi")
        return Response("Trang thai COMPLETE khong duoc cap nhat")

class deletetodo(APIView):
    def delete(self,request):
        if(request.data['status']=="NEW"):
            try:
                print(1)
                id =request.data['id']
                Task.objects.get(id=id).delete()
                return Response("xoa task thanh cong" )
            except:
                    return Response("Task khong ton tai")
        return Response("Trang thai COMPLETE khong duoc cap nhat")
        

