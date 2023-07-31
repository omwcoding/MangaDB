from django.conf import settings
from django.conf.urls.static import static
from django.urls import include, path
from . import views

urlpatterns = [
    path('', include('manga.urls')),
    path('collections/', views.collection_list, name='collection_list'),
    path('collections/<int:collection_id>/', views.collection_detail, name='collection_detail'),
    path('manga_volumes/', views.manga_volume_list, name='manga_volume_list'),
    # Aggiungi altre URL e viste se necessario
]

# Serve i file media solo durante lo sviluppo (DEBUG=True)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
