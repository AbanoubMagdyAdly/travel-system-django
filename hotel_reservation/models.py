from django.db import models
from places import models as Cities
# Create your models here.
class Hotel(models.Model):
    hotel_name=models.CharField(max_length=200)
    hotel_ranking=models.IntegerField()
    city_id=models.ForeignKey(Cities.Cities, on_delete=None)