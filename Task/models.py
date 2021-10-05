from django.db import models
from django.db.models.fields import BooleanField, CharField, DateField
from django.db.models.fields.related import ForeignKey
from django.contrib.auth.models import User
# Create your models here.



class Task(models.Model):
   C = 'COMPLETE'
   N = 'NEW'
   status_choices = (
       ('COMPLETE','COMPLETE'),
       ('NEW','NEW'),
   )
   id = models.IntegerField(primary_key=True)
   name = models.CharField(max_length=200)
   iduser = models.ForeignKey(User,on_delete=models.SET_NULL,null=True)
   decription = models.CharField(max_length=200)
   dateofcompletion = models.DateField()
   status = models.CharField(max_length=9,choices=status_choices,default='NEW')
   dateofcreation = models.DateField()
   dateofmodification = models.DateField()
   def setiduser(self,id):
       iduser = id
       return self
   def getiduser(self):
       return self.iduser.id   


