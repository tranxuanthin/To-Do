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
from rest_framework import permissions
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


class signup(APIView):
    permission_classes = (permissions.AllowAny,)
    def post(seft,request):
        try:
            username = request.data['username']
            password = request.data['password']
            email = request.data['email']
            user = User.objects.create_user(username,email,password)
            user.save()
        except:
            return Response("ten dang nhap da ton tai")
        
        return Response("Thanh cong") 


class addtodo(APIView):
    def post(seft,request):
        id = request.data['id']
        try:
            task = Task.objects.get(id=id)
            return Response("Task voi id da ton tai")
        except:
            data = taskSerializers(data=request.data)
            if not data.is_valid():
                return Response("Du lieu khong dung ")
            data.save()        
            return Response("Thanh cong") 


class gettodobyid(APIView):
    def get(seft,request,id):
        try:
            data = Task.objects.get(id=id)
            jon = taskSerializers(data,many=False) 
            return Response(jon.data)
        except:
            return Response("Id khong ton tai")


class assigntodo(APIView):
    def put(self,request,id):
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
            return Response("Thanh cong") 
       

class updatetodo(APIView):
    def put(self,request):
        id = request.data['id']
        try:
            task = Task.objects.get(id=id)
            if(task.status =="NEW"):
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
                return Response("Cap nhat Task thanh cong" )
            # except:
            #     data = taskSerializers(data=request.data)
            #     if not data.is_valid():
            #         return Response("Không đúng định dạng")
            #     data.save()
            #     return Response("Id Task chua ton tai nen da tao moi Task moi")
            else:
                return Response("Trang thai COMPLETE khong duoc cap nhat")
        except:
            return Response("Task khong ton tai")        
        



class deletetodo(APIView):
    def delete(self,request):
        id =request.data['id']
        try:
            task =  Task.objects.get(id=id)
            if(task.status =="NEW"):
                try:
                    Task.objects.get(id=id).delete()
                    return Response("Xoa Task thanh cong" )
                except:
                    return Response("Task khong ton tai")
            else:
                return Response("Trang thai COMPLETE khong duoc xoa")
        except:
            return Response("Task khong ton tai")
        
        
        
        

