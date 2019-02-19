from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from .models import *
# Create your views here.

#def single_city(request,country_id):
 #  country_DB=Countries.objects.get(id=eval(country_id))
  # city_DB=Cities.objects.filter(id=eval(country_id))
   #context={'country':country_DB,'city':city_DB}
   #return render(request, "city_page.html",context)



def all_countries(request):
    country_DB = Countries.objects.all()
    context={'allcountries':country_DB}
    return render(request,"all_countries.html",context)

def single_country(request,country_id):
    #country_DB=Countries.objects.get(id=eval(country_id))
    city_DB=Cities.objects.filter(country_id=eval(country_id))
    print (city_DB)
    context={'city':city_DB}
    return render(request,"single_country.html",context)

def locations(request,city_id):
    loc_DB = Locations.objects.filter(city_id=eval(city_id))
    context = {'location': loc_DB}
    return render(request, "locations.html", context)
