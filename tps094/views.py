from django.views.generic import View
from django.shortcuts import render


class HomeView(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'index.html', context = {})
    
class SecoundLogin(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'login_secundario.html', context = {}) 
    
class login(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'login.html', context = {})
    
class registro_carro(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'registro_carro.html', context = {})

