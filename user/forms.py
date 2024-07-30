from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm, SetPasswordForm
from .models import UserCustom
from .models import Car
from .models import Diagnostico
from django.db import models

class UserCustomRegisterForm(UserCreationForm):
     username = forms.CharField(label="Nombre de usuario")
     email = forms.EmailField(label="Correo electrónico")
     password1 = forms.CharField(label="Contraseña", widget=forms.PasswordInput)
     password2 = forms.CharField(label="Confirmar contraseña", widget=forms.PasswordInput)

     class Meta:
        model = UserCustom
        fields = ['username', 'email', 'password1', 'password2']

     def clean_email(self):
        email = self.cleaned_data.get('email')
        if UserCustom.objects.filter(email=email).exists():
            raise forms.ValidationError("Este correo electrónico ya está registrado.")
        return email

class EmailLoginForm(forms.Form):
    email = forms.EmailField(label="Correo electrónico")
    password = forms.CharField(widget=forms.PasswordInput, label="Contraseña")

class EditProfileForm(UserChangeForm):
    username = forms.CharField(label="Nombre de usuario")
    email = forms.EmailField(label="Correo electrónico")
    password = None 

    class Meta:
        model = UserCustom
        fields = ('email', 'username')

class ChangePasswordForm(SetPasswordForm):
    pass

class CarForm(forms.ModelForm):
    class Meta:
        model = Car
        fields = ['name', 'marca', 'linea', 'modelo', 'placa', 'tipo', 'kilometraje', 'Hibrido']
        Hibrido = forms.BooleanField

class CarEditForm(forms.ModelForm):
    class Meta:
        model = Car
        fields = ['name', 'marca', 'linea', 'modelo', 'placa', 'tipo', 'kilometraje', 'Hibrido']

class DiagnosticoForm(forms.ModelForm):
    class Meta:
        model = Diagnostico
        fields = ['car_part', 'symptom']

class AgregarAlCarritoForm(forms.Form):
    servicio_id = forms.IntegerField(widget=forms.HiddenInput())

from django import forms
from .models import Factura


class FacturaForm(forms.ModelForm):
    class Meta:
        model = Factura
        fields = ['nombre', 'modo_pago']
        widgets = {
            'modo_pago': forms.Select(choices=Factura.METODOS_DE_PAGO)
        }