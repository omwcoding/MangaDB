from django.db import models
from django.dispatch import receiver

class Author(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name

class Publisher(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    country = models.CharField(max_length=100, null=True, blank=True)

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
    image = models.ImageField(upload_to='images/', default='default.jpg')
    favorite = models.BooleanField(default=False)
    totalprice = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return self.name
    
    def calculate_totalprice(self):
        totalprice = 0
        for volume in self.mangavolume_set.all():
            totalprice += volume.price
        self.totalprice = totalprice


    def calculate_completion_percentage(self):
        total_volumes = self.mangavolume_set.count()
        owned_volumes = self.mangavolume_set.filter(owned=True).count()

        if total_volumes > 0:
            percentage = (owned_volumes / total_volumes) * 100
            return round(percentage, 2)
        else:
            return 0
    
    def update_completion_percentage(self):
        total_volumes = self.mangavolume_set.count()
        owned_volumes = self.mangavolume_set.filter(owned=True).count()

        if total_volumes > 0:
            percentage = (owned_volumes / total_volumes) * 100
            self.completion_percentage = round(percentage, 2)
        else:
            self.completion_percentage = 0
        self.save()

    def save(self, *args, **kwargs):
        from .models import MangaVolume
        if not self.pk:  # Only perform this on initial creation, not on updates
            super().save(*args, **kwargs)  # Save the Collection instance first

            for number in range(1, self.numberofvolumes + 1):
                volume_name = f"{self.name} volume {number}"
                MangaVolume.objects.create(
                    name=volume_name,
                    number=number,
                    price=0,
                    owned=False,
                    collection=self,
                )

            # Calculate the total price after creating the volumes
            self.calculate_totalprice()
        else:
            super().save(*args, **kwargs)  # For updates, just save the Collection instance



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
