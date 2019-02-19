from django.db import models



class Users(models.Model):
    user_name = models.CharField(max_length=100)
    user_password = models.CharField(max_length=64, default=None)
    user_email = models.CharField(max_length=50, default=None)
    user_image = models.ImageField(upload_to='system/static/images/profile', blank=True,default="text")
    user_is_blocked = models.BooleanField(default=0)
    def __str__(self):
        return self.user_name
