from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import UserChangeForm
from django import forms
from .models import CustomUser

class MyUserChangeForm(UserChangeForm):
    class Meta(UserChangeForm.Meta):
        model = MyUser

class MyUserAdmin(UserAdmin):
    form = MyUserChangeForm

    fieldsets = UserAdmin.fieldsets + (
            (None, {'fields': ('loggin_allowed',)}),
    )


admin.site.register(MyUser, MyUserAdmin)