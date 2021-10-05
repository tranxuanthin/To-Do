from django.contrib import admin
from django.urls import path
from .views import  getalluser, signup,addtodo,getalltodo,gettodobyid,assigntodo,updatetodo,deletetodo
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
urlpatterns = [
    path('signin/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('getalltodo/', getalltodo.as_view(), name='getalltodo'),
    path('gettodobyid/<int:id>/', gettodobyid.as_view(), name='gettodobyid'),
    path('signup/', signup.as_view(), name='signup'),
    path('addtodo/', addtodo.as_view(), name='addtodo'),
    path('getalluser/', getalluser.as_view(), name='getalluser'),
    path('assigntodo/<int:id>/', assigntodo.as_view(), name='assigntodo'),
    path('updatetodo/', updatetodo.as_view(), name='updatetodo'),
    path('deletetodo/', deletetodo.as_view(), name='deletetodo'),

]