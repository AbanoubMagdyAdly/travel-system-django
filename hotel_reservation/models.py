from django.db import models
from places import models as City
# Create your models here.
class Hotel(models.Model):
    hotel_name=models.CharField(max_length=200)
    hotel_ranking=models.IntegerField()
    city_id=models.ForeignKey(City)