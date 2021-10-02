from django.contrib import admin
from django.urls import path
from .views import TestAPIView, sigup
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
urlpatterns = [
    path('signin/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('info/', TestAPIView.as_view(), name='TestAPIView'),
    path('signu/', sigup.as_view(), name='sigup'),

]