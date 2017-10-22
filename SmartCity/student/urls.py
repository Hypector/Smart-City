from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.student, name = 'student'),

    url(r'studentinfo', views.studentinfo, name =  'studentinfo'),
    ]


