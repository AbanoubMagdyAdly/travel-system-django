from django.db import models
from places import models as Cities
<<<<<<< HEAD
from authentication.models import Users
=======
from authentication import models as Users


>>>>>>> b7c868dde248d2cfe71f0286fcb4dd1e81065645
# Create your models here.


class User_Experiences(models.Model):
<<<<<<< HEAD
	city_id=models.ForeignKey(Cities.Cities)
	user_id=models.ForeignKey(Users)
	description=models.CharField(max_length=1000)
=======
    city_id = models.ForeignKey(Cities.Cities, on_delete=None)
    user_id = models.ForeignKey(Users.Users, on_delete=None)
    description = models.CharField(max_length=1000)

>>>>>>> b7c868dde248d2cfe71f0286fcb4dd1e81065645

class Comments(models.Model):
    user_experience_id = models.ForeignKey(User_Experiences, on_delete=None)
    user_id = models.ForeignKey(Users.Users, on_delete=None)
    comment = models.CharField(max_length=200)
