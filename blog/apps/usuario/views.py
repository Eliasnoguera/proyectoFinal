from .forms import RegistroUsuarioForm
from django.contrib.auth.views import LoginView, LogoutView
from django.views.generic import CreateView
from django.contrib import messages
from django.shortcuts import redirect
from django.urls import reverse
from django.views.generic import TemplateView
from django.shortcuts import render, get_object_or_404, redirect


# Create your views here.

class RegistrarUsuario(CreateView):
    template_name = 'registration/registrar.html'
    form_class = RegistroUsuarioForm

    def form_valid(self, form):
        messages.success(self.request, 'Registro exitoso. Por favor, inicia sesion')
        form.save()

        return redirect('apps.usuario:registrar')
    
class LoginUsuario(LoginView):
        template_name ='registration/login.html'

        def get_success_url(self):
            messages.success(self.request, 'login exitoso')

            return reverse('apps.usuario:login')   
        

class LogoutUsuario(LogoutView):
    template_name = 'registration/logout.html'

    def dispatch(self, request, *args, **kwargs):
      
        response = super().dispatch(request, *args, **kwargs)
        messages.success(self.request, 'Has cerrado sesión correctamente.')
        return response
    



