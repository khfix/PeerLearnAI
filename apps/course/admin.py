from django.contrib import admin
from apps.course.models import Category, Course, TeacherCourse , UserCourse ,Video
from django.utils.html import format_html
# Register your models here.



class VideoAdmin(admin.TabularInline):
    model = Video




class CourseAdmin(admin.ModelAdmin):
    inlines = [ VideoAdmin]
    list_display = ["name" , 'get_price' , 'get_discount' , 'active']
    list_filter = ("discount" , 'active')

    def get_discount(self , course):
        return f'{course.discount} %'
    
    def get_price(self , course):
        return f'JD {course.price}'
    
    get_discount.short_description= "Discount"
    get_price.short_description = "Price"



class UserCourseAdminModel(admin.ModelAdmin):
    model = UserCourse   
    list_display = ['click' , 'get_user' , 'get_course'] 
    list_filter = ['course']

    def get_user(self , usercourse):
        return format_html(f"<a target='_blank' href='/admin/auth/user/{usercourse.user.id}'>{usercourse.user}</a>")
    
    def click(self , usercourse):
        return "Click to Open"
    

    def get_course(self , usercourse):
        return format_html(f"<a target='_blank' href='/admin/courses/course/{usercourse.course.id}'>{usercourse.course}</a>")

    get_course.short_description = "Course"
    get_user.short_description = "User"

admin.site.register(Course , CourseAdmin)
admin.site.register(Video)
admin.site.register(Category)
admin.site.register(TeacherCourse)

admin.site.register(UserCourse , UserCourseAdminModel)