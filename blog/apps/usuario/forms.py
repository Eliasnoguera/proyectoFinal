from .models import Usuario
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth import authenticate, login
from .models import Usuario, Perfil


class RegistroUsuarioForm(UserCreationForm):

    class Meta:
        model = Usuario
        fields = ['username', 'first_name', 'last_name', 'password1', 'password2', 'email', 'imagen']



class LoginForm(forms.Form):
    username = forms.CharField(label='Nombre de usuario')
    password = forms.CharField(label='Contraseña', widget=forms.PasswordInput)

    def login(self, request):
         username = self.cleaned_data.get(label='username')
         password = self.cleaned_data.get(label='password')
         user = authenticate(request, username=username, password=password)
         if user:
             login(request, user)


