from django.contrib import admin
from .models import Countries, Cities, Locatios, Hotel

#class CustomCountries(admin.ModelAdmin):
    #fieldsets=



# Register your models here.
admin.site.register(Countries, Cities, Locatios, Hotel)
