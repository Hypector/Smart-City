from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def tourist(request):
	return render(request, 'tourist/tourist.html')

def touristinfo(request):
	return render(request, 'tourist/touristinfo.html')

def touristinfo(request):
	return render(request, 'tourist/Attraction.html')

   