from django.shortcuts import render

# Create your views here.
def city(request):
    return render(request, "city_page.html")

def single_city(request,city_name="cairo"):
   city_DB=Cities.objects.filter(city_name=eval(city_name))
   context={'city':city_DB}
   return render(request, "city_page.html",context)
