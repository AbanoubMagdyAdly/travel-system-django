from django.db import models
from authentication import models as Users

# Create your models here.
class Rides(models.Model):
    ride_date = models.DateField(default=None)
    ride_time = models.TimeField(default=None)
    user_id = models.ForeignKey(Users.Users, on_delete=None)
    from_location = models.IntegerField(default=0)
    to_location = models.IntegerField(default=0)