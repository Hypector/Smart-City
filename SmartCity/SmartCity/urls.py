"""SmartCity URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^homepage/', include('homepage.urls')),
    url(r'^aboutus/', include('aboutus.urls')),

    url(r'^tourist/', include('tourist.urls')),
    url(r'^tourist/touristinfo/', include('tourist.urls')),

    url(r'^student/', include('student.urls')),
    url(r'^student/studentinfo/', include('student.urls')),

    url(r'^businessman/', include('businessman.urls')),
    url(r'^businessman/businessmaninfo/', include('businessman.urls')),

    url(r'^createuser/', include('createuser.urls')),
    url(r'^loginpage/', include('loginpage.urls')),


    url(r'^admin/', admin.site.urls),

    #USER AUTH URLS
    #url(r'^accounts/login/$', include('views.login_view')),
    #url(r'^accounts/auth/$', include('views.auth_view')),
   # url(r'^accounts/logout/$', include('views.logout_view')),
    #url(r'^accounts/loggedin/$', include('views.loggedin_view')),
    #url(r'^accounts/invalid/$', include('views.invalid_login_view')),

    ]
