from django.urls import path
from .views import PostListView,PostDetailView, PostCreateView, PostUpdateView, PostDeleteView, ComentarPostView, ComentarioUpdateView, ComentarioDeleteView, CategoriaListView, PostPorCategoriaView

app_name = 'apps.posts'


urlpatterns = [
    path('posts/', PostListView.as_view(), name='posts'),
    path('posts/<int:id>/', PostDetailView.as_view(), name='post_individual'),
    
  
    path('crear/', PostCreateView.as_view(), name='post_create'),

   
    path('<int:pk>/editar/', PostUpdateView.as_view(), name='post_update'),

   
    path('<int:pk>/eliminar/', PostDeleteView.as_view(), name='post_delete'),

    
    path('posts/<int:pk>/comentar/', ComentarPostView.as_view(), name='comentar_post'),
    path('comentarios/<int:pk>/editar/', ComentarioUpdateView.as_view(), name='comentar_edit'),
    path('comentarios/<int:pk>/eliminar/', ComentarioDeleteView.as_view(), name='comentar_delete'),

    path('posts/categorias/', CategoriaListView.as_view(), name='categorias'),
    path('categorias/<int:id>/', PostPorCategoriaView.as_view(), name='posts_por_categoria'), 
    
]