from django import template
import math

from apps.course.models import UserCourse , Course 
register = template.Library()

@register.simple_tag
def cal_sellprice(price , discount):
    if discount is None or discount is 0:
        return price
    sellprice = price
    sellprice = price - ( price * discount * 0.01 )
    return math.floor(sellprice)


@register.filter
def JD(price):
    return f'{price} JD'




@register.simple_tag
def is_enrolled(request , course):
   
    user = None
    if not request.user.is_authenticated:
        return False
  
    user = request.user
    try:
        user_course = UserCourse.objects.get(user = user  , course = course)
        return True
    except:
        return False