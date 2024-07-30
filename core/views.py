from django.shortcuts import render, redirect
from django.views.generic import View
from .models import TallerMecanico
from django.shortcuts import get_object_or_404
from django.contrib.auth.decorators import login_required
from .forms import CitaForm
from .models import Cita
from django.contrib import messages

@login_required
def lista_talleres(request):
    talleres = TallerMecanico.objects.all()
    return render(request, 'lista_talleres.html', {'talleres': talleres})

@login_required
def detalle_taller(request, taller_id):
    taller = get_object_or_404(TallerMecanico, pk=taller_id)
    return render(request, 'informacion_taller.html', {'taller': taller})

class Contacto(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'chat.html', context = {})

@login_required
def programar_cita(request):
    form = CitaForm(initial={'usuario': request.user})
    citas = Cita.objects.filter(usuario=request.user)

    if request.method == 'POST':
        form = CitaForm(request.POST)
        if form.is_valid():
            nueva_cita = form.save(commit=False)
            nueva_cita.usuario = request.user
            nueva_cita.save()
            messages.success(request, 'Tu cita ha sido programada con éxito.')
            return redirect('generar_factura')

    talleres = TallerMecanico.objects.all()
    context = {'form': form, 'talleres': talleres, 'citas': citas}

    return render(request, 'programar_cita.html', context)

@login_required
def historial_citas(request):
    historial = Cita.objects.filter(usuario=request.user)
    return render(request, 'historial_citas.html', {'historial' : historial})

@login_required
def reprogramar_cita(request, cita_id):
    cita = get_object_or_404(Cita, id=cita_id, usuario=request.user)

    if request.method == 'POST':
        form = CitaForm(request.POST, instance=cita)
        if form.is_valid():
            form.save()
            return redirect('historial_citas')
    else:
        form = CitaForm(instance=cita)

    return render(request, 'reprogramar_cita.html', {'form': form, 'cita': cita})
@login_required
def cancelar_cita(request, cita_id):
    cita = get_object_or_404(Cita, id=cita_id, usuario=request.user)
    if request.method == 'POST':
        cita.delete()
    return redirect('historial_citas')
