from django.db import models

class Hotels(models.Model):
    pass

class Users(models.Model):
    user_name = models.CharField(max_length = 100)
    user_password = models.CharField(max_length = 64 , default=None)
    user_email = models.CharField(max_length = 50 , default=None)
    user_is_blocked = models.BooleanField


class Reservations(models.Model):
    user = models.ForeignKey(Users,on_delete=None)
    hotel = models.ForeignKey(Hotels,on_delete=None)
    no_of_persons = models.IntegerField()
    from_date = 0
    to_date = 0

class Rides(models.Model):
    user = models.ForeignKey(Users,on_delete=None)
    ride_date = 0
    ride_time = 0
    from_location = 0
    to_location = 0
