from django.db import models

class Attraction(models.Model):
	name = models.CharField(max_length=30)
	streetNum = models.IntegerField()
	StreetName = models.CharField(max_length=30)
	suburb = models.CharField(max_length=30)
	areaCode = models.IntegerField()
	attractionType = models.CharField(max_length=30)

	def __str__(self):
		return self.name
# Create your models here.
