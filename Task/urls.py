from django.contrib import admin
from django.urls import path
from .views import  sigup,addtodo,getalltodo
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
urlpatterns = [
    path('signin/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('getalltodo/', getalltodo.as_view(), name='TestAPIView'),
    path('signup/', sigup.as_view(), name='sigup'),
    path('addtodo/', addtodo.as_view(), name='addtodo'),

]