from django.db import models
from places import models as Cities
from authentication import models as Users
from django.conf import settings

# Create your models here.


class User_Experiences(models.Model):
    city_id = models.ForeignKey(Cities.Cities, on_delete=None)
    # user_id = models.ForeignKey(Users.Users, on_delete=None)
    user_id = models.ForeignKey(getattr(settings, 'AUTH_USER_MODEL', 'auth.User'), on_delete=None)
    add_your_experience = models.CharField(max_length=1000)
    rate = models.IntegerField(default=0)


class Comments(models.Model):
    user_experience_id = models.ForeignKey(User_Experiences, on_delete=None)
    user_id = models.ForeignKey(getattr(settings, 'AUTH_USER_MODEL', 'auth.User'), on_delete=None)
    add_your_comment = models.CharField(max_length=200)
