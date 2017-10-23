from django.db import models

# Create your models here.
class SignUp(models.Model):
	first_name = models.CharField(max_length=120, null = True, blank = True)
	last_name = models.CharField(max_length=120, null = True, blank = True)
	email = models.EmailField()
	account_type = models.CharField(max_length = 120, null = True, blank = True)

	def __str__(self):
		return(self.first_name)