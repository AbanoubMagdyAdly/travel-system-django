from django.db import models
from places import models as Cities
from authentication.models import Users
# Create your models here.


class User_Experiences(models.Model):
	city_id=models.ForeignKey(Cities.Cities)
	user_id=models.ForeignKey(Users)
	description=models.CharField(max_length=1000)

class Comments(models.Model):
	user_experience_id=models.ForeignKey(User_Experiences)
	user_id=models.ForeignKey(Users)
	comment=models.CharField(max_length=200)
