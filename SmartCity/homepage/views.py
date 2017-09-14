from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return render(request, 'homepage/home.html')

def detail (request):
    return HttpResponse("<H2> You're looking at the home page. </H1>")

def detail_two (request):
    response = "H2> We need to fill in using CSS stylesheet and also need to configure the different pages. </H2>"
    return HttpResponse(response)

def detail_three (request):
    words = "Words go here."
    return HttpResponse(words)


