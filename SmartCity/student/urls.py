#Begin Aiden changes
from django.conf.urls import url, include
from django.views.generic import ListView, DetailView
from homepage.models import Attraction
#End Aiden changes

from . import views

urlpatterns = [
    url(r'^$', views.student, name = 'student'),

    url(r'studentinfo', views.studentinfo, name =  'studentinfo'),
    ]


