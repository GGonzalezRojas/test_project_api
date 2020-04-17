from django.db import models

# Create your models here.
class Person(models.Model):
    rut = models.CharField(max_length=10, null=False, unique=True, default='111111111-1')
    name = models.CharField(max_length=50, null=False)
    lastName = models.CharField(max_length=50, null=False)
    age = models.PositiveIntegerField(null=True, blank=True)
    course = models.CharField(max_length=10, null=False)

    def __str__(self):
        return '{0},{1}'.format(self.name, self.lastName)