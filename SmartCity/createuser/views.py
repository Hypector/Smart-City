from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def createuser(request):
	return render(request, 'createuser/createuser.html')

