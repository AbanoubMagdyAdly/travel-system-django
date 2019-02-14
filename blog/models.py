from django.db import models
from places import models as Cities
from authentication import models as Users

# Create your models here.


class User_Experiences(models.Model):

    city_id = models.ForeignKey(Cities.Cities, on_delete=None)
    user_id = models.ForeignKey(Users.Users, on_delete=None)
    description = models.CharField(max_length=1000)


class Comments(models.Model):
    user_experience_id = models.ForeignKey(User_Experiences, on_delete=None)
    user_id = models.ForeignKey(Users.Users, on_delete=None)
    comment = models.CharField(max_length=200)
