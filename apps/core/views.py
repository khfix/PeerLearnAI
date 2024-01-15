import decimal
from http import client
import time
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from apps.account.decorators import allowed_user, unauthenticated_user
from apps.account.models import Profile

from apps.core.models import Payment
from apps.course.models import Category, Course, UserCourse, Video
from django.views.generic import ListView

import pandas as pd

import joblib

from apps.teacher.models import Teacher
reloadModel=joblib.load('./savedModels/model.joblib')





class HomePageView(ListView):
    template_name = "home/home.html"
    queryset = Course.objects.filter(active=True)
    context_object_name = 'courses'
    
 
    
    



@unauthenticated_user
def coursePage(request , slug):
    course = Course.objects.get(slug  = slug)
    serial_number  = request.GET.get('lecture')
    videos = course.video_set.all().order_by("serial_number")

    if serial_number is None:
        serial_number = 1 

    video = Video.objects.get(serial_number = serial_number , course = course)

    if (video.is_preview is False):

        if request.user.is_authenticated is False:
            return redirect("login")
        else:
            user = request.user
            try:
                user_course = UserCourse.objects.get(user = user  , course = course)
            except:
                return redirect("check-out" , slug=course.slug)
        
        
    context = {
        "course" : course , 
        "video" : video , 
        'videos':videos
    }
    return  render(request , template_name="home/course_page.html" , context=context )
@allowed_user('Student')
@unauthenticated_user
def user_course(request):
    
    
    course = UserCourse.objects.filter(user = request.user)
    profile = Profile.objects.get(User=request.user)
    
    
    context = { 
    'course': course,
    'profile':profile
    }
    return render(request, 'home/user_course.html',context)
@allowed_user('Student')
@unauthenticated_user
def checkout(request , slug):
    course = Course.objects.get(slug  = slug)
    
    user = request.user
    error = None

    
    try:
        user_course = UserCourse.objects.get(user = user  , course = course)
        error = "You are Already Enrolled in this Course"
    except:
        pass
    amount=None
    if error is None : 
        amount =  int((course.price - ( course.price * course.discount * 0.01 )) * 100)    
    if amount==0:
        userCourse = UserCourse(user = user , course = course)
        userCourse.save()
        
        return redirect('user_course') 
    
    if amount!=0:   
        balance = Profile.objects.get(User = request.user)
        if balance.money!=0:
            courseprice= int((course.price - ( course.price * course.discount * 0.01 )))
            balance.money = int(balance.money - int(courseprice))
            balance.save()
            userCourse = UserCourse(user = user , course = course)
            userCourse.save()
            return redirect('user_course')
        
        else:
            error = "No Money to Enroll this Course"
            return render(request , 'home/home.html' , {'error' : error } )
            
        
    
    context = {
        "balance": balance,
        "course" : course , 
        "user" : user , 
        "error" : error,
    }
    return  render(request , template_name="home/check_out.html" , context=context )  


    
@allowed_user('Student')
@unauthenticated_user
def for_you(request):
    info=Profile.objects.get(User = request.user)
    
    support = 1
    uey = info.UEY
    Major = info.major
    interests = info.interests
    futur_course = info.futur_course
    
    if Major == 'Information Technology':
        Major = 2
    elif Major == 'Economy':
        Major = 3
    elif Major == 'Law':
        Major = 4
    elif Major == 'Civil Engineering':
        Major = 5
    elif Major == 'English':
        Major = 6
    elif Major == 'Graphic Design':
        Major = 7
    elif Major == 'Math':
        Major = 9
    else:
        Major=0
    
    if interests == 'Languages':
        interests = 11
    elif interests == 'Programming':
        interests = 12
    elif interests == 'Mathematics':
        interests = 13
    elif interests == 'Data analysis':
        interests = 14
    elif interests == 'Physics':
        interests = 15
    elif interests == 'Photos edit':
        interests = 16
    elif interests == 'Machine learning':
        interests = 17
    elif interests == 'Photos edit':
        interests = 16
    elif interests == 'Machine learning':
        interests = 17
    elif interests == 'Lawyer':
        interests = 18
    elif interests == 'Architectural drawing':
        interests = 19
    elif interests == 'Statistical dnalysis':
        interests = 20
    else:
        interests=0
    
    if futur_course == 'Java':
        futur_course = 21
    elif futur_course == 'English':
        futur_course = 22
    elif futur_course == 'Photoshop':
        futur_course = 23
    elif futur_course == 'C++':
        futur_course = 24
    elif futur_course == 'Artificial intelligence':
        futur_course = 25
    elif futur_course == 'Spanish':
        futur_course = 26
    elif futur_course == 'Python':
        futur_course = 27
    elif futur_course == 'Numerical Analysis':
        futur_course = 28
    elif futur_course == 'Introduction to Arabic Common Law':
        futur_course = 29
    elif futur_course == 'Social Work: Practice, Policy and Research':
        futur_course = 30
    elif futur_course == 'Construction Management':
        futur_course = 31
    elif futur_course == 'Introduction to Engineering Mechanics':
        futur_course = 32
    else:
        futur_course=0

    
    temp={}
    temp['e-learning process']=support
    temp['UEY']=uey
    temp['Major']= Major
    temp['Interested']=interests
    temp['Courses']=futur_course
    temp2=temp.copy()
    print (temp.keys(),temp2.keys())

    testDtaa=pd.DataFrame({'x':temp2}).transpose()
    cat=reloadModel.predict(testDtaa)[0]
    
    if cat == 100:
        cat = 1
    elif cat == 200:
        cat = 4
    elif cat == 300:
        cat = 2
    elif cat == 400:
        cat = 3

    
    
    courses = Course.objects.filter(category=cat)
    
    
    context={'courses':courses}
    
    return render(request, 'home/for_you.html',context)

@allowed_user('Student')
@unauthenticated_user
def teachers(request):
    teachers = Teacher.objects.all()
    
    
    
    context={'teachers':teachers}
    return render(request, 'home/teachers.html',context)


@allowed_user('Student')
@unauthenticated_user
def add_coupon(request):
    if request.method == 'POST':
        ucoupon = request.POST.get('coupon')
        courses = Course.objects.get(coupon=ucoupon)
        userCourse = UserCourse(user = request.user , course = courses)
        userCourse.save()
        return redirect("user_course")
    
    context={}
    return render(request, 'home/coupon.html',context)



def teachers_courses(request,teacher_id):
    teacher = get_object_or_404(Teacher, pk=teacher_id)
    courses = Course.objects.filter(teacher = teacher)


    
    
    
    context={
        'teacher':teacher,
        'courses':courses
    }
    return render(request, 'home/teachers_courses.html',context)