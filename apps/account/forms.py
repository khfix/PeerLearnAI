from pyexpat import model
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from apps.account.models import Profile




class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username','email','password1','password2']





class ProfileForm(ModelForm):
    class Meta:
        model = Profile
        fields = ['full_name','avatar','major','UEY','interests','futur_course']
      

