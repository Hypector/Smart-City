from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.businessman, name = 'businessman'),
    
    url(r'businessmaninfo', views.businessmaninfo, name =  'businessmaninfo'),

    ]

