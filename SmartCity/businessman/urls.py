#Begin Aiden changes
from django.conf.urls import url, include
from django.views.generic import ListView, DetailView
from homepage.models import Attraction
#End Aiden changes

from . import views

urlpatterns = [
    url(r'^$', views.businessman, name = 'businessman'),
    
    url(r'businessmaninfo', views.businessmaninfo, name =  'businessmaninfo'),

    ]

