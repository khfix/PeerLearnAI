

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import redirect


def unauthenticated_user(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            return view_func(request, *args, **kwargs)
        
        else:
            return redirect('login')
            
        
    return wrapper_func

def allowed_user(allowed_roles=[]):
    def decorator(view_func):
        def wrapper_func(request, *args, **kwargs):
            
            group = None
            if request.user.groups.exists():
                group = request.user.groups.all()[0].name
            if group in allowed_roles:   
                return view_func(request, *args, **kwargs)
            else:
                return redirect('not_allowed')
        return wrapper_func
    return decorator

