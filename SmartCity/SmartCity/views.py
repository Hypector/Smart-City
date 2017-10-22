#SITEWIDE VIEWS#

from django.shortcuts import render
from django.http import HttpResponse
from django.http impot HttpResponseRedirect
from django.contrib import auth
from django.core.context_processors import csrf

# Create your views here.

def login(request):
	c = {}
	c.update(csrf(request))
	return render_to_response('login.html', c)