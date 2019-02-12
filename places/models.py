from django.db import models

# Create your models here.
class Locations(models.Model):
    location_name=models.CharField(max_length=200)
    city_id=models.ForeignKey(City)

