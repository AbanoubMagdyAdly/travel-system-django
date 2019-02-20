from django.conf import settings
from django.db import models
from authentication import models as Users

a_user = getattr(settings,'AUTH_USER_MODEL','auth.User')

# Create your models here.
class Rides(models.Model):
    ride_date = models.CharField(max_length=200,default=None)
    ride_time = models.TimeField(default=None)
    user_id = models.ForeignKey(a_user, on_delete=None)
    from_location = models.IntegerField(default=0)
    to_location = models.IntegerField(default=0)