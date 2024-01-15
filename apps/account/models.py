from django.db import models
from django.contrib.auth.models import User
# Create your models here.





class Profile(models.Model):
    full_name = models.CharField(max_length = 15 , null = False)
    avatar = models.FileField(upload_to= 'avatar/', blank=True, null=True)
    money = models.IntegerField(default=500)
    User = models.ForeignKey(User , null = False , on_delete=models.CASCADE)
    major = models.CharField(max_length = 50 , null = False)
    UEY = models.IntegerField(null=False)
    interests = models.CharField(max_length = 150 , null = False)
    futur_course = models.CharField(max_length = 150 , null = False)
    def __str__(self):
        return self.full_name