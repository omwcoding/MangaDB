# urls.py del progetto principale "MangaDB"

from django.contrib import admin
from django.urls import include, path
from manga.views import homepage, collection_list, collection_detail, manga_volume_list

urlpatterns = [
    path('admin/', admin.site.urls),
    path('manga/', include('manga.urls')),
    path('collections/', collection_list, name='collection_list'),
    path('collections/<int:collection_id>/', collection_detail, name='collection_detail'),
    path('manga_volumes/', manga_volume_list, name='manga_volume_list'),
    path('', homepage, name='homepage'),  # Aggiungi questo URL per la homepage
    # Aggiungi altre URL e viste se necessario
]
