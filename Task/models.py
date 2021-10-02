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
   name = models.CharField(max_length=200)
   iduser = models.ForeignKey(User,on_delete=models.PROTECT)
   decription = models.CharField(max_length=200)
   dateofcompletion = models.DateField()
   status = models.CharField(max_length=9,choices=status_choices,default='NEW')
   dateofcreation = models.DateTimeField(auto_now_add=True)
   dateofmodification = models.DateField(auto_now=True)
  


