from django.shortcuts import render

# Create your views here.
from car_rental.models import Rides
from places.models import Locations, Countries


def rental(request,country_id,city_id):
    if request.method == 'POST':
           r=Rides(user_id=request.user,ride_date=request.POST["date"],ride_time=request.POST["time"],from_location=request.POST['loc1'],to_location=request.POST['loc2'])
           r.save()
    loc = Locations.objects.filter(city_id=eval(city_id))
    country_DB = Countries.objects.all()
    context = {'loc': loc,'allcountries': country_DB}
    return render(request, "rental.html",context)
