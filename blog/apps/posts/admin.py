
from django.contrib import admin
from .models import Categoria, Post, Comentario



@admin.register(Post)
class PostsAdmin(admin.ModelAdmin):
    list_display = ('id', 'titulo', 'subtitulo', 'fecha', 'texto',
                    'activo', 'categoria', 'imagen', 'publicado')
    
@admin.register(Comentario)
class ComentarioAdmin(admin.ModelAdmin):
    list_display = ('usuario', 'post', 'contenido', 'fecha_creacion')

    admin.site.register(Categoria)

# Register your models here.
