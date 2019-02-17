"""system URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from os import path

from django.contrib import admin
from django.conf.urls import url
from home import views as home
from blog import views as blog
from hotel_reservation import views as reservation
from car_rental import views as rental

urlpatterns = [
    url('admin/', admin.site.urls),
    url(r'^$', home.index),
    url(r'^blog/$',blog.blog,name='blog'),
    url(r'^reservation/$',reservation.reservation,name='reservation'),
    url(r'^rental/$',rental.rental,name='rental'),

    # url(r'^static/(?P<path>.*)$', 'django.views.static.serve',{'document_root': path.join(path.dirname(__file__), 'static')}),

]
