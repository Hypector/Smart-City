from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def student(request):
    return HttpResponse("<H2> Hello World!! Smart City HOMEPAGE. </H2>")
   