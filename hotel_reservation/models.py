from django.db import models
from authentication import models as Users
from places import models as Hotels


# Create your models here.

class Reservations(models.Model):
    user = models.ForeignKey(Users.Users, on_delete=None)
    hotel = models.ForeignKey(Hotels.Hotel, on_delete=None)
    no_of_persons = models.IntegerField()
    from_date = models.DateField(default=None)
    to_date = models.DateField(default=None)
