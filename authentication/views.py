from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login

def index(request):
    return render(request, 'index.html')
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