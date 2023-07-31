from django.urls import path
from . import views

urlpatterns = [
    path('collections/', views.collection_list, name='collection_list'),
    path('collections/<int:collection_id>/', views.collection_detail, name='collection_detail'),
    path('manga_volumes/', views.manga_volume_list, name='manga_volume_list'),
    # Aggiungi altre URL e viste se necessario
]

