

from django.urls import include, path
from . import views
from .views import registerPage,loginPage,logoutUser,profile, user_profile


urlpatterns = [
    
 path('register/', registerPage , name = 'register'),
 path('login/', loginPage , name = 'login'),
 path('logout/',logoutUser, name='logout'),
 path('info/',profile, name='info'),
 path('user_profile/',user_profile, name='user_profile'),
 
 
    
]
