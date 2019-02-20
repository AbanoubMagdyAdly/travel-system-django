from django.shortcuts import render
from .models import *


# Create your views here.

def single_country(request, country_id):
    country_DB = Countries.objects.all()
    country= Countries.objects.get(id=eval(country_id))
    city_DB = Cities.objects.filter(country_id=eval(country_id))
    context = {'city': city_DB, 'allcountries': country_DB,'country':country}
    return render(request, "single_country.html", context)


def single_city(request, country_id, city_id):
    loc = Locations.objects.filter(city_id=eval(city_id))
    city = Cities.objects.get(id=eval(city_id))
    country_DB = Countries.objects.all()
    context = {'location': loc, 'allcountries': country_DB, 'city': city, 'country_id': country_id,'show':"True"}
    # if city.country_id == country_id:
    return render(request, "city_page.html", context)
    # else:
    #     return render(request, "index.html", context)


def locations(request, city_id):
    loc_DB = Locations.objects.filter(city_id=eval(city_id))
    country_DB = Countries.objects.all()
    context = {'location': loc_DB, 'allcountries': country_DB}
    return render(request, "locations.html", context)
