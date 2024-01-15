
from django.urls import path

from apps.account.views import not_allowed 
from .views import  add_course, add_video, edit_course, edit_teacher, teacher_course , teacher_dash, view_student

from . import views



urlpatterns = [
   
    path('page-user', edit_teacher , name = 'page-user'),
    path('teacher_panel', teacher_dash , name = 'teacher_panel'),
    path('add_course', add_course , name = 'add_course'),
    path('teacher_course', teacher_course , name = 'teacher_course'),
    path('edit_course/<str:slug>', edit_course , name = 'edit_course'),
    path('not_allowed', not_allowed , name = 'not_allowed'),
    path('add_video', add_video , name = 'add_video'),
    path('view_student', view_student , name = 'view_student')
]
