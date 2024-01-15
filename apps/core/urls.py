

from django.urls import path 
from .views import  HomePageView, add_coupon, checkout, coursePage, for_you, teachers, teachers_courses, user_course



urlpatterns = [
    
    path('', HomePageView.as_view() , name = 'home'),
    path('course/<str:slug>', coursePage , name = 'coursepage'),
    path('user_course', user_course , name = 'user_course'),
    path('check-out/<str:slug>', checkout , name = 'check-out'),
    path('for_you', for_you , name = 'for_you'),
    path('teachers', teachers , name = 'teachers'),
    path('coupon', add_coupon , name = 'coupon'),
    path('<int:teacher_id>/', teachers_courses, name='teacher'),

    
]


