from django.shortcuts import render
from .models import User_Experiences, Comments
from authentication.models import Users
from places.models import *
from .forms import UserExperienceForm, CommentForm
from django.http import HttpResponseRedirect

# Create your views here.
def experience_new(request, country_id, city_id):
    country_DB = Countries.objects.all()
    exp_all = User_Experiences.objects.filter(city_id=city_id)
    all_users = Users.objects.all()
    s_city = Cities.objects.get(id=city_id)
    country=Countries.objects.get(id=city_id)
    form1 = UserExperienceForm()
    if request.method == "POST":
        form1 = UserExperienceForm(request.POST)
        if form1.is_valid():
            post1 = form1.save(commit=False)
            post1.city_id = Cities.objects.get(id=city_id)
            post1.user_id =request.user
            post1.save()
            return HttpResponseRedirect('/country/' + str(country_id) + "/city/" + str(city_id) + "/blog")
    return render(request, 'blog.html', {'form1':form1,'exp_all': exp_all,'all_users':all_users,'s_city':s_city,'country':country,'allcountries':country_DB})


def comment_new(request, country_id, city_id, experienceid):
    country_DB = Countries.objects.all()
    single_experience = User_Experiences.objects.get(city_id=city_id, id=experienceid)
    comments_all = Comments.objects.filter(user_experience_id_id=experienceid)
    all_users = Users.objects.all()
    form2 = CommentForm()
    if request.method == "POST":
        form2 = CommentForm(request.POST)
        if form2.is_valid():
            post2 = form2.save(commit=False)
            post2.user_experience_id = User_Experiences.objects.get(id=experienceid)
            post2.user_id =request.user
            post2.save()
            return HttpResponseRedirect('/country/' + str(country_id) + "/city/" + str(city_id) + "/blog/" + str(experienceid) + "/")
    return render(request, 'experience.html', {'form2':form2,'single_experience': single_experience,'comments_all':comments_all,'all_users':all_users,'allcountries':country_DB})
