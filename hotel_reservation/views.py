from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render

from places.models import Hotel, Countries
from .models import *

# Create your views here.
def reservation(request,country_id,city_id):
    if request.method == 'POST':
           print( request.POST['num'])
           print( request.POST['datefrom'])
           print( request.POST['dateto'])
           print( request.POST['treatment'])
           print(request.user.id)
           r=Reservations(user=request.user,hotel=Hotel.objects.get(id=request.POST['treatment']),no_of_persons=request.POST['num'],from_date=request.POST['datefrom'],to_date=request.POST['dateto'])
           r.save()
    hotels = Hotel.objects.filter(city_id=eval(city_id))
    country_DB = Countries.objects.all()
    context = {'hotels': hotels,'allcountries': country_DB}
    return render(request, "reservation.html",context)
