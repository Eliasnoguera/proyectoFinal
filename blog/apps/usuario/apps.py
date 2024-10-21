# apps.py
from django.apps import AppConfig

class UsuarioConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apps.usuario'

    def ready(self):
        import apps.usuario.signals  # Asegúrate de que este import esté presente
