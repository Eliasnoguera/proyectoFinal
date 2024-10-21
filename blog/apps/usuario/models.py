from django.db import models
from django.urls import reverse
from django.contrib.auth.models import AbstractUser



class Usuario(AbstractUser):
    imagen= models.ImageField(null=True,blank=True, upload_to='usuario', default='usuario/user-default.jpg')

    def get_absolute_url(self):
        return reverse('index')
    

class Perfil(models.Model):
    USUARIO_PERFIL_CHOICES = [
        ('visitante', 'Visitante'),
        ('miembro', 'Miembro'),
        ('colaborador', 'Colaborador'),
    ]

    user = models.OneToOneField(Usuario, on_delete=models.CASCADE)  
    perfil_tipo = models.CharField(max_length=20, choices=USUARIO_PERFIL_CHOICES)

    def __str__(self):
        return f'{self.user.username} - {self.perfil_tipo}'