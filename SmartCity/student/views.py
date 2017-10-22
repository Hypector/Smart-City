from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def student(request):
    return render(request, 'student/student.html')
    

def studentinfo(request):
	return render(request, 'student/studentinfo.html')
