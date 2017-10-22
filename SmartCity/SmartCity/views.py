#SITEWIDE VIEWS#

from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.http impot HttpResponseRedirect
from django.contrib import auth
from django.core.context_processors import csrf

# Create your views here.

#process form data

def post(self, request):

	form = self.form_class(request.POST)

	if form.is_valid():

		user = form.save(commit=False)

		#cleaned data
		username = form.cleaned_data['username']
		password = form.cleaned_data['password']
		user.set_password(password)
		user.save()


		user = authenticate(username=username, password=password)

		if user is not None:
			if user.is_active:
				login(request, user)
				return redirect('businessman:businessmaninfo')


	return render(request.self.template_name