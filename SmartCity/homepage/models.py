from django.db import models

# Create your models here.
# class user(models.Model):
# 	email = models.EmailField(max_length=30)
# 	firstNme = models.CharField(max_length=30)
# 	lastName = models.CharField(max_length=30)
# 	userType = models.CharField(max_length=30)
# 	password = models.CharField(max_length=30)

class attraction(models.Model):
	name = models.CharField(max_length=30)
	streetNum = models.IntegerField()
	StreetName = models.CharField(max_length=30)
	suburb = models.CharField(max_length=30)
	areaCode = models.IntegerField()
	website = models.URLField(max_length=30)
	attractionType = models.CharField(max_length=30)
	rating = models.IntegerField()
