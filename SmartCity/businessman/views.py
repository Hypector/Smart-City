from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def businessman(request):
    return HttpResponse("<body> Hello World!! Smart City BUSINESSMAN page. </body>")
   