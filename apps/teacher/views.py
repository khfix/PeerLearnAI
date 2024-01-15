from msilib.schema import ListView
from django import forms
from django.shortcuts import render, redirect
from django.utils.text import slugify
from django.shortcuts import HttpResponse
from django.forms.formsets import formset_factory
from matplotlib.pyplot import title
from apps import teacher
from apps.account.decorators import allowed_user, unauthenticated_user
from apps.account.forms import CreateUserForm
from apps.course import models
from apps.course.models import Category, Course, TeacherCourse, UserCourse, Video

from apps.teacher.forms import CourseForm, TeacherForm, VideoForm

from django.contrib.auth.models import User

from apps.teacher.models import Teacher




# Create your views here.
@allowed_user('Teacher')
@unauthenticated_user
def teacher_dash(request):
    
    
    return render(request, 'home/index.html')

@allowed_user('Teacher')
@unauthenticated_user
def edit_teacher(request):
    teacher = Teacher.objects.get(created_by = request.user)
    if request.method == 'POST':
        username = request.POST.get('UserName')
        email = request.POST.get('email')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')
        user_id = request.user.id
        user = User.objects.get(id=user_id)
        user.username = username
        user.email = email
        user.password1 = password1
        user.password2 = password2
        user.save()
        teacher.avatar = request.FILES['avatar']
        teacher.save()
        return redirect('page-user')
    
    
    context= {
        'teacher':teacher
    }
    return render(request, 'home/page-user.html',context )


@allowed_user('Teacher')
@unauthenticated_user
def add_course(request):
    cat = Category.objects.all()
    course = Course()
    video = Video()
    if request.method == 'POST':
        
        course.name = request.POST.get('name')
        get_cat_name = request.POST.get('category')
        get_obj = Category.objects.get(title = get_cat_name)
        course.category = get_obj
        course.description = request.POST.get('description')
        course.price = request.POST.get('price')
        course.discount = request.POST.get('discount')
        active = request.POST.get('active')
        if active == 'on':
            active = True
        else:
            active = False
        course.active = active
        course.thumbnail = request.FILES['thumbnail']
        course.length = request.POST.get('length')
        course.coupon = request.POST.get('coupon')
        course.tags = request.POST.get('tags')
        course.slug = request.POST.get('slug')
        course.teacher = request.user.teacher
        course.save()
        video.title = request.POST.getlist('title')
        video.serial_number = request.POST.getlist('serial_number')
        video.video_id = request.POST.getlist('video_id')
        preview = request.POST.getlist('is_preview')
        if preview == 'on':
            preview = True
        else:
            preview = False
        video.is_preview = preview
        for i in video:
            video.course = course
            video.save()
        teacherCourse = TeacherCourse( teacher = request.user.teacher , course = course)
        teacherCourse.save()
        return redirect('teacher_course')
        
    context = {
        'cat':cat
    }

    return render(request,  'home/add_course.html', context )

@allowed_user('Teacher')
@unauthenticated_user
def teacher_course(request):
    
    
    course = TeacherCourse.objects.filter(teacher = request.user.teacher)
    
    context = { 
    'course': course
    }
    return render(request, 'home/teacher_course.html',context)


@allowed_user('Teacher')
@unauthenticated_user
def edit_course(request, pk):
    teacher = request.user.teacher
    course = teacher.course.get(pk=pk)

    if request.method == 'POST':
        form = CourseForm(request.POST, request.FILES, instance=course)
        vform = VideoForm(request.POST, request.FILES)

        if vform.is_valid():
            Video = Video.save(commit=False)
            Video.course = course
            Video.save()

            return redirect('teacher_course')

        if form.is_valid():
            form.save()

            return redirect('teacher_course')
    else:
        
        form = CourseForm(instance=course)
        vform = VideoForm()
    
    return render(request, 'home/edit_product.html', {'form': form, 'vform': vform, 'course': course})


@allowed_user('Teacher')
@unauthenticated_user
def add_video(request):
    
    courses = Course.objects.filter(teacher = request.user.teacher )
    video = Video()

    if request.method == 'POST':
        course = request.POST.get('course')
        get_obj = Course.objects.get(name = course)
        video.course = get_obj
        video.title = request.POST.get('title')
        video.serial_number = request.POST.get('serial_number')
        video.video_id = request.POST.get('video_id')
        preview = request.POST.getlist('is_preview')
        if preview == 'on':
            preview = True
        else:
            preview = False
        video.is_preview = preview
        video.save()
        
        
        
        return redirect('teacher_course')


    context= {

        'courses':courses
       
    }
    return render(request, 'home/add_video_teacher.html', context)

@allowed_user('Teacher')
@unauthenticated_user
def view_student(request):
    course = Course.objects.filter(teacher = request.user.teacher)
    users = User.objects.filter(groups= 3)
    student = UserCourse.objects.filter(course = course)
    
    context= {
        'course':course,
        'users':users,
        'student':student 
    }
    return render(request, 'home/viewstudent_teacher.html', context)