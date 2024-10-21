from django.shortcuts import render
from apps.posts.models import Post, Categoria  


def index(request):
    posts = Post.objects.all()[:5]  
    ultimos_posts = Post.objects.filter(activo=True).order_by('-fecha')[:3]  
    categorias = Categoria.objects.all()  
    return render(request, 'index.html', {'posts': posts, 'ultimos_posts': ultimos_posts, 'categorias': categorias})


def acerca(request):
    return render(request, 'acerca.html')
