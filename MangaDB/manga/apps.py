from django.apps import AppConfig

class MangaConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'manga'

    def ready(self):
        import manga.signals  # Aggiungi questa riga per importare il file signals.py
