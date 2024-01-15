from tokenize import group
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group

from apps.account.models import Profile
from apps.teacher.models import Teacher
from django.contrib.auth.models import User



from .decorators import allowed_user, unauthenticated_user






from .forms import CreateUserForm, ProfileForm




def registerPage (request):  
    form = CreateUserForm()
    
    
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            b_teacher = request.POST.get('b_teacher')
            print(b_teacher)
            if b_teacher == 'on' :
                login(request, user)
                teacher = Teacher.objects.create(name=user.username, created_by=user)
                group = Group.objects.get(name='Teacher')
                user.groups.add(group)
                
                return redirect('teacher_panel')
            else:
                group = Group.objects.get(name='Student')
                user.groups.add(group)
                messages.success(request, 'Account was created for '+ username)
                return redirect('login')
    
   
       
    context = {'form':form}
    return render(request, 'accounts/register.html',context)
    
   



def loginPage (request):
    
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username = username, password = password )
        if user is not None:
            login(request, user)
            
            group = None
            if request.user.groups.exists():
                group = request.user.groups.all()[0].name
            if group == 'Teacher':   
                return redirect('teacher_panel')
            else:
                return redirect('info')
        else:
            messages.info(request, 'Username OR password is incorrect')
         
    context = {}
    return render(request, 'accounts/login.html', context )
    
    
    

def logoutUser(request):
    logout(request)
    return redirect('login')


@unauthenticated_user  
def profile(request):
    form = ProfileForm(request.POST,request.FILES)
    check =Profile.objects.filter(User_id = request.user)
    if check.exists():
        return redirect('home')
    else:
        if request.method == 'POST':
            if form.is_valid():
                profile = form.save(commit=False)
                profile.User = request.user
                profile.full_name = request.POST.get('full_name')
                profile.major = request.POST.get('major')
                profile.UEY = request.POST.get('UEY')
                profile.interests = request.POST.get('interests')
                profile.futur_course = request.POST.get('futur_course')
                profile.avatar = request.FILES['avatar']
                profile.save()
                return redirect('home')
        else:
            form = ProfileForm()
    
    context = {
        'form': form
        }     
            
    return render(request, 'accounts/info.html', context)
         
@unauthenticated_user       
def user_profile(request):
    profile = Profile.objects.get(User=request.user)
    
    if request.method == 'POST':
        full_name = request.POST.get('full_name')
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
        profile.full_name = full_name
        profile.save()
        return redirect('user_profile')
    
    
    context = { 
    'profile': profile
    }
    return render(request, 'accounts/user_profile.html',context)



def not_allowed(request):

    context = { 
 
    }
    
    return render(request, 'home/page-403.html',context)