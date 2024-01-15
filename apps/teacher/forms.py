from dataclasses import fields
from pyexpat import model
from django import forms
from django.forms import ModelForm
from requests import request

from apps.course.models import Course, Video
from apps.teacher.models import Teacher


class CourseForm(ModelForm):
    class Meta:
        model = Course
        fields = ['category','name','price','description','active','thumbnail','length','coupon','tags','discount']
        
        
class VideoForm(ModelForm):  
    class Meta:
        model = Video
        fields = ['title','serial_number','video_id','is_preview','course']



class TeacherForm(ModelForm):  
    class Meta:
        model = Teacher
        fields = ['name','created_by']