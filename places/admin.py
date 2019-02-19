from django.contrib import admin
from .models import Countries, Cities, Locations, Hotel


class InlineCities(admin.StackedInline):
	extra = 8
	model = Cities

class InlineLocations(admin.StackedInline):
	extra = 4
	model = Locations

class InlineHotel(admin.StackedInline):
	extra = 4
	model = Hotel

class CustomCountries(admin.ModelAdmin):
    fieldsets = (
        ['Country Info',{'fields':['country_name']}],
    )
    inlines = [InlineCities]
    list_display = ('country_name',)
    search_fields = ['country_name']
    list_filter = ['country_name']

class CustomCities(admin.ModelAdmin):
    fieldsets = (
        ['City Info',{'fields':['city_name','city_rate']}],
        ['Country',{'fields':['country_id']}]
    )
    inlines = [InlineLocations,InlineHotel]
    list_display = ('city_name', 'city_rate')
    search_fields = ['city_name']
    list_filter = ['city_rate','country_id','city_name']


class CustomLocations(admin.ModelAdmin):
    fieldsets = (
        ['Location Info',{'fields':['location_name']}],
        ['City',{'fields':['city_id']}]
    )
    list_display = ('location_name',)
    search_fields = ['location_name']
    list_filter = ['location_name','city_id']

class CustomHotel(admin.ModelAdmin):
    fieldsets = (
        ['Hotel Info',{'fields':['hotel_name','hotel_ranking']}],
        ['City',{'fields':['city_id']}]
    )
    list_display = ('hotel_name','hotel_ranking')
    search_fields = ['hotel_name']
    list_filter = ['hotel_ranking','hotel_name','city_id']

# Register your models here.
admin.site.register(Countries, CustomCountries)
admin.site.register(Cities, CustomCities)
admin.site.register(Locations, CustomLocations)
admin.site.register(Hotel, CustomHotel)
