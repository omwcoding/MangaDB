from django.shortcuts import render, get_object_or_404
from .models import Collection, MangaVolume

def collection_list(request):
    collections = Collection.objects.all()
    return render(request, 'collection_list.html', {'collections': collections})

def collection_detail(request, collection_id):
    collection = get_object_or_404(Collection, id=collection_id)
    return render(request, 'collection_detail.html', {'collection': collection})

def manga_volume_list(request):
    manga_volumes = MangaVolume.objects.all()
    return render(request, 'manga_volume_list.html', {'manga_volumes': manga_volumes})

def homepage(request):
    collections = Collection.objects.all()
    return render(request, 'homepage.html', {'collections': collections})