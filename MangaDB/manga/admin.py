from django.contrib import admin
from .models import Author, Publisher, Collection, MangaVolume, Genre
# Register your models here.

admin.site.register(Genre)
admin.site.register(Author)
admin.site.register(Publisher)
admin.site.register(Collection)
admin.site.register(MangaVolume)