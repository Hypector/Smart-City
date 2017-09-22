from django.db import models

class Attraction(models.Model):
	name = models.CharField(max_length=30)
	streetNum = models.IntegerField()
	StreetName = models.CharField(max_length=30)
	suburb = models.CharField(max_length=30)
	areaCode = models.IntegerField()
	website = models.URLField(max_length=30)
	attractionType = models.CharField(max_length=30)
	rating = models.IntegerField()

	def __str__(self):
		return self.title
# Create your models here.
