from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render

from places.models import Hotel
from .models import *

# Create your views here.
def reservation(request,country_id,city_id):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)

        if form.is_valid():
            form.save()
    else:
        hotels = Hotel.objects.filter(city_id=eval(city_id))
        context = {'hotels': hotels}
    return render(request, "reservation.html",context)
