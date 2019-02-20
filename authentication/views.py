

from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login
from places.models import *

def index(request):
    topcountry = Countries.objects.all().order_by('-country_rate')[:5]
    topcity = Cities.objects.all().order_by('-city_rate')[:5]
    country_DB = Countries.objects.all()
    context = {'allcountries': country_DB,'topcity': topcity,'topcountry':topcountry}
    return render(request, 'index.html',context)

def register(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)

        if form.is_valid():
            form.save()
            user = authenticate(username=form.cleaned_data['username'], password=form.cleaned_data['password1'])
            login(request, user)
            return redirect('index')
    else:
        form = UserCreationForm()
    context = {'form': form}
    return render(request, 'authentication/register.html', context)

def profile(request):
    return render(request, 'authentication/profile.html')
