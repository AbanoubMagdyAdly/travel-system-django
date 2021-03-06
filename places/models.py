from django.db import models

# Create your models here.
class Countries(models.Model):
    country_name = models.CharField(max_length=200)
    country_description = models.CharField(max_length=1500,default="text")
    country_rate=models.IntegerField(default=0)
    def __str__(self):
	       return self.country_name

class Cities(models.Model):
    city_name = models.CharField(max_length=200)
    city_description = models.CharField(max_length=1500,default="text")
    city_image = models.ImageField(upload_to='system/static/images/cities', blank=True)
    city_rate = models.IntegerField(default=0)
    country= models.ForeignKey(Countries, on_delete=None)
    def __str__(self):
        return self.city_name

class Locations(models.Model):
    location_name = models.CharField(max_length=200)
    location_image = models.ImageField(upload_to='system/static/images/locations', blank=True)
    city = models.ForeignKey(Cities, on_delete=None)
    def __str__(self):
        return self.location_name

class Hotel(models.Model):
    hotel_name = models.CharField(max_length=200)
    hotel_ranking = models.IntegerField()
    city = models.ForeignKey(Cities, on_delete=None)
    def __str__(self):
        return self.hotel_name
