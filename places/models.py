from django.db import models

# Create your models here.
class Countries(models.Model):
	country_name=models.CharField(max_length=200)

class Cities(models.Model):
	city_name=models.CharField(max_length=200)
	country_id=models.ForeignKey(Countries ,on_delete=None)

class Locations(models.Model):
    location_name=models.CharField(max_length=200)
    city_id=models.ForeignKey(Cities, on_delete=None)

