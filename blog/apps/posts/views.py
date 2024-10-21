from django.shortcuts import render, get_object_or_404, redirect
from.models import Post, Comentario, Categoria
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView, TemplateView
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib import messages
from .forms import PostForm, ComentarioForm
from django.db.models import Q

#vista basada en funciones 
#def posts(request):
#    posts = Post.objects.all()
 #   return render(request, 'posts.html', {'posts' : posts})

#vista basada en clases
class PostListView(ListView):
    model = Post
    template_name = 'posts/posts.html'  # Plantilla para los posts
    context_object_name = 'posts'  # Nombre del contexto

    def get_queryset(self):
        queryset = Post.objects.all()

       
        buscar = self.request.GET.get('buscar', '')
        if buscar:
            queryset = queryset.filter(Q(titulo__icontains=buscar) | Q(subtitulo__icontains=buscar))

        
        categoria_id = self.request.GET.get('categoria', '')
        if categoria_id:
            queryset = queryset.filter(categoria_id=categoria_id)

        
        orden = self.request.GET.get('orden', '')
        if orden == 'titulo_asc':
            queryset = queryset.order_by('titulo')
        elif orden == 'titulo_desc':
            queryset = queryset.order_by('-titulo')
        elif orden == 'antiguedad_asc':
            queryset = queryset.order_by('fecha')
        elif orden == 'antiguedad_desc':
            queryset = queryset.order_by('-fecha')

        return queryset
    
    

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categorias'] = Categoria.objects.all()  
       
        categoria_seleccionada = self.request.GET.get('categoria')
        if categoria_seleccionada:
            try:
                context['categoria_seleccionada'] = Categoria.objects.get(id=categoria_seleccionada)
            except Categoria.DoesNotExist:
                context['categoria_seleccionada'] = None
              
        return context



class PostDetailView(DetailView):
    model = Post
    template_name = "posts/post_individual.html"
    context_object_name = "posts"  
    pk_url_kwarg = "id"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['form'] = ComentarioForm()  
        return context


class PostCreateView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = Post
    form_class = PostForm
    template_name = "posts/post_form.html"
    success_url = reverse_lazy('apps.posts:posts')

    def test_func(self):
        return self.request.user.perfil.perfil_tipo == 'colaborador'

    def form_valid(self, form):
        form.instance.autor = self.request.user  
        messages.success(self.request, 'Post creado con éxito.')
        return super().form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
    form_class = PostForm
    template_name = "posts/post_actualizar.html"
    success_url = reverse_lazy('apps.posts:posts')

    def test_func(self):
        return self.request.user.perfil.perfil_tipo == 'colaborador'

    def form_valid(self, form):
        messages.success(self.request, 'Post actualizado con éxito.')
        return super().form_valid(form)


class PostDeleteView(DeleteView):
    model = Post
    template_name = 'posts/post_confirm_delete.html'  
    success_url = reverse_lazy('apps.posts:posts') 

    def post(self, request, *args, **kwargs):
        messages.success(request, 'El post ha sido eliminado con éxito.')
        return super().post(request, *args, **kwargs)
    

class ComentarPostView(LoginRequiredMixin, CreateView):
    model = Comentario
    form_class = ComentarioForm
    template_name = "posts/comentar_form.html"

    def form_valid(self, form):
       
        form.instance.usuario = self.request.user
        
       
        form.instance.post = get_object_or_404(Post, pk=self.kwargs['pk'])
        
        messages.success(self.request, 'Comentario añadido con éxito.')
        return super().form_valid(form)
    
    def get_success_url(self):
        return reverse_lazy('apps.posts:post_individual', kwargs={'id': self.kwargs['pk']})
    
    
class ComentarioUpdateView(LoginRequiredMixin, UpdateView):
    model = Comentario
    fields = ['contenido']  
    template_name = "posts/comentario_update.html"

    def get_success_url(self):
        messages.success(self.request, 'Comentario actualizado con éxito.')
        return reverse_lazy('apps.posts:post_individual', kwargs={'id': self.object.post.id})

    def get_queryset(self):
        return Comentario.objects.filter(usuario=self.request.user)  
    

class ComentarioDeleteView(LoginRequiredMixin, DeleteView):
    model = Comentario
    template_name = "posts/comentario_confirm_delete.html"

    def get_success_url(self):
        messages.success(self.request, 'Comentario eliminado con éxito.')
        return reverse_lazy('apps.posts:post_individual', kwargs={'id': self.object.post.id})

    def get_queryset(self):
        return Comentario.objects.filter(usuario=self.request.user)  
    



class CategoriaListView(ListView):
    model = Categoria
    template_name = "posts/categorias.html"
    context_object_name = "categorias"  



class PostPorCategoriaView(ListView):
    model = Post
    template_name = "posts/posts_por_categoria.html"  
    context_object_name = "posts"

    def get_queryset(self):
        return Post.objects.filter(categorias__id=self.kwargs['pk'])  





