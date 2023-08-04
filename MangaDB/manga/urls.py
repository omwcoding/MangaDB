from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage, name='homepage'),  # Aggiungi questa riga per definire l'URL della homepage
    path('collections/', views.collection_list, name='collection_list'),
    path('collections/<int:collection_id>/', views.collection_detail, name='collection_detail'),
    path('manga_volumes/', views.manga_volume_list, name='manga_volume_list'),
    path('collections/<int:collection_id>/update_volumes/', views.update_volumes, name='update_volumes'),
    path('add_collection/', views.add_collection, name='add_collection'),
    path('collections/<int:collection_id>/edit/', views.edit_collection, name='edit_collection'),
    path('collections/<int:collection_id>/delete/', views.delete_collection, name='delete_collection'),
    # Altre URL e viste se necessario
]
