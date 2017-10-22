#Begin Aiden changes
from django.conf.urls import url, include
from django.views.generic import ListView, DetailView
from homepage.models import Attraction
#End Aiden changes

from . import views

urlpatterns = [
	# url(r'^$', ListView.as_view(queryset=Attraction.objects.all().order_by("name")[:10], templete_name="homepage/Attraction.html")),

    url(r'^$', views.tourist, name = 'tourist'),

    url(r'touristinfo', views.touristinfo, name =  'touristinfo'),

    ]
