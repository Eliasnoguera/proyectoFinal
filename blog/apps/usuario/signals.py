# blog/apps/usuario/signals.py

from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Usuario, Perfil

@receiver(post_save, sender=Usuario)
def crear_perfil(sender, instance, created, **kwargs):
    if created:
        
        Perfil.objects.create(user=instance, perfil_tipo='miembro')

@receiver(post_save, sender=Usuario)
def guardar_perfil(sender, instance, **kwargs):
    instance.perfil.save()
