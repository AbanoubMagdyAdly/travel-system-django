from django.db import models
from authentication import models as Users
from places import models as Hotels
from django.conf import settings

a_user = getattr(settings,'AUTH_USER_MODEL','auth.User')


# Create your models here.

class Reservations(models.Model):
    user = models.ForeignKey(a_user, on_delete=None)
    hotel = models.ForeignKey(Hotels.Hotel, on_delete=None)
    no_of_persons = models.IntegerField()
    from_date = models.CharField(max_length=200,default=None)
    to_date = models.CharField(max_length=200,default=None)

