from django.conf import settings
from django.conf.urls.static import static
from django.urls import include, path
from django.contrib import admin

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('manga.urls')),
    # Aggiungi altre URL e viste se necessario
]

# Serve i file media solo durante lo sviluppo (DEBUG=True)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
