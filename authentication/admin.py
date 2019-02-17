from django.contrib import admin
from .models import Users


class CustomUsers(admin.ModelAdmin):
    fieldsets = (
        ['User Info',{'fields':['user_name','user_password','user_email','user_is_blocked']}],
    )
    list_display = ('user_name','user_email','user_password','user_is_blocked')
    search_fields = ['user_name']
    list_filter = ['user_name','user_email','user_is_blocked']


# Register your models here.
admin.site.register(Users, CustomUsers)
