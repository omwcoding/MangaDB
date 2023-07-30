from django.db import models

# Create your models here.
class Author(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    class Meta:
        app_label = 'manga'

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
    description = models.CharField(max_length=200)
    numberofvolumes = models.IntegerField(default=0)
    year = models.IntegerField(default=0)
    finished = models.BooleanField(default=False)
    publisher = models.ForeignKey(Publisher, on_delete=models.SET_NULL, null=True, blank=True)
    author = models.ForeignKey(Author, on_delete=models.SET_NULL, null=True, blank=True)
    genre = models.ForeignKey(Genre, on_delete=models.SET_NULL, null=True, blank=True)
    totalprice = models.DecimalField(max_digits=6, decimal_places=2)
    completion_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    image = models.ImageField(upload_to='images/', default='images/None/No-img.jpg')
    favorite = models.BooleanField(default=False)


    def __str__(self):
        return self.name
    
    # Metodo per calcolare la percentuale di completamento solo se necessario
    # Usare questo metodo per aggiornare la percentuale di completamento nel frontend
    def get_completion_percentage(self):
        total_volumes = self.mangavolume_set.count()  # Conta il numero totale di volumi nella collezione
        owned_volumes = self.mangavolume_set.filter(owned=True).count()  # Conta il numero di volumi posseduti
        if total_volumes > 0:
            percentage = (owned_volumes / total_volumes) * 100.0
            return round(percentage, 2)
        return 0  # Ritorna 0 se non ci sono volumi nella collezione

    # Override del metodo save per aggiornare la percentuale di completamento
    def save(self, *args, **kwargs):
        self.completion_percentage = self.calculate_completion_percentage()
        super(Collection, self).save(*args, **kwargs)
    
class MangaVolume(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200)
    number = models.IntegerField(default=0)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    owned = models.BooleanField(default=False)
    collection = models.ForeignKey(Collection, on_delete=models.CASCADE)
    genre = models.ForeignKey(Genre, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return f"{self.collection.name} volume {self.number}"  # Restituisci il titolo nel formato desiderato
    
    # Override del metodo save per aggiornare la percentuale di completamento nella collezione
    def save(self, *args, **kwargs):
        super(MangaVolume, self).save(*args, **kwargs)
        self.collection.completion_percentage = self.collection.calculate_completion_percentage()
        self.collection.save()  # Salva la collezione con la percentuale di completamento aggiornata

