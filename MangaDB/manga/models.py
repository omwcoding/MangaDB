from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver

class Author(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name

class Publisher(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    country = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Genre(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.name
    
class Collection(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    description = models.CharField(max_length=5000)
    numberofvolumes = models.IntegerField(default=0)
    year = models.IntegerField(default=0)
    finished = models.BooleanField(default=False)
    publisher = models.ForeignKey(Publisher, on_delete=models.SET_NULL, null=True, blank=True)
    author = models.ForeignKey(Author, on_delete=models.SET_NULL, null=True, blank=True)
    genre = models.ForeignKey(Genre, on_delete=models.SET_NULL, null=True, blank=True)
    completion_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    image = models.ImageField(upload_to='images/', default='images/None/No-img.jpg')
    favorite = models.BooleanField(default=False)
    totalprice = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return self.name
    
    def calculate_total_price(self):
        total_price = 0
        for volume in self.mangavolume_set.all():
            total_price += volume.price
        return total_price

    def calculate_completion_percentage(self):
        total_volumes = self.mangavolume_set.count()
        owned_volumes = self.mangavolume_set.filter(owned=True).count()
        if total_volumes > 0:
            percentage = (owned_volumes / total_volumes) * 100.0
            return round(percentage, 2)
        return 0

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)  # Save the Collection instance first
        # Create volumes after saving the Collection
        from .models import MangaVolume
        for number in range(1, self.numberofvolumes + 1):
            MangaVolume.objects.create(
                number=number,
                price=0,
                owned=False,
                collection=self,
            )
        # Calculate the total price after creating the volumes
        self.totalprice = self.calculate_total_price()
        super().save(*args, **kwargs)


class MangaVolume(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    number = models.IntegerField(default=0)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    owned = models.BooleanField(default=False)
    collection = models.ForeignKey(Collection, on_delete=models.CASCADE)
    genre = models.ForeignKey(Genre, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return f"{self.collection.name} volume {self.number}"
