from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from django.http import HttpResponse

from createuser.forms import SignUpForm
# Create your views here.



def createuser(request):
	return render(request, 'createuser/createuser.html')

def signup(request):
	if request.method == 'POST':
		form = SignUpForm(request.POST)
		if form.is_valid():
			form.save()
			username = form.cleaned_data.get('username')
			raw_password = form.cleaned_data.get('password1')
			user = authenticate(username = username, password=raw_password)
			login(request,user)
			return redirect('home')

	else:
		form = SignUpForm()
	return render(request, 'createuser.html', {'form': form})

