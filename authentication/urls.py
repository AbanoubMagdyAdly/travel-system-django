from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url('accounts/', include('django.contrib.auth.urls')),
    url('register', views.register, name="register"),
    url('profile', views.profile, name="profile"),

]
