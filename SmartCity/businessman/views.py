from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def businessman(request):
	return render(request, 'businessman/businessman.html')


def businessmaninfo(request):
	return render(request, 'businessman/businessmaninfo.html')


	