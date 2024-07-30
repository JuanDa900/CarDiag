from django.shortcuts import render, redirect
from .forms import UserCustomRegisterForm
from django.contrib import messages

from django.contrib.auth import authenticate, login
from .forms import EmailLoginForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout

from .forms import EditProfileForm
from .forms import ChangePasswordForm
from django.contrib.auth import update_session_auth_hash

from .forms import CarForm
from django.shortcuts import get_object_or_404
from .models import Car

from .forms import CarEditForm

from .models import Diagnostico
from .forms import DiagnosticoForm

from .forms import FacturaForm
from .models import Servicio, Factura
from core.views import historial_citas


#Registro de usuario
def register(request):
    if request.method == "POST":
        form = UserCustomRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Cuenta creada para {username}!')
            return redirect('login')
    else:
        form = UserCustomRegisterForm()
    return render(request, 'crear_cuenta.html', {'form': form})

#Inicio de sesión
def user_login(request):
    if request.method == "POST":
        form = EmailLoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']
            user = authenticate(request, username=email, password=password)
            if user is not None:
                login(request, user)
                return redirect('profile')
    else:
        form = EmailLoginForm()
    return render(request, 'login1.html', {'form': form})

@login_required
def profile(request):
    talleres = request.user.talleres.all()
    return render(request, 'profile.html', {'talleres': talleres})

#logout
def user_logout(request):
    logout(request)
    return redirect('main')

#editar perfil
@login_required
def edit_profile(request):
    password_form = ChangePasswordForm(request.user)
    
    if request.method == 'POST':
        form = EditProfileForm(request.POST, instance=request.user)

        if 'change_password' in request.POST:
            password_form = ChangePasswordForm(request.user, request.POST)
            if password_form.is_valid():
                user = password_form.save()
                # Actualiza la sesión para que el usuario no se desloguee
                update_session_auth_hash(request, user)
                return redirect('profile')

        elif form.is_valid():
            form.save()
            return redirect('profile')

    else:
        form = EditProfileForm(instance=request.user)

    return render(request, 'edit_profile.html', {'form': form, 'password_form': password_form})

#eliminar perfil
@login_required
def delete_profile(request):
    if request.method == 'POST':
        user = request.user
        user.delete()
        # Cerrar la sesión después de eliminar el perfil
        logout(request)
        # Redireccionar a la página principal tras cerrar la sesión
        return redirect('main')


#Añadir carro
@login_required
def add_car(request):
    if request.method == 'POST':
        form = CarForm(request.POST)
        if form.is_valid():
            car = form.save(commit=False)
            car.user = request.user
            car.save()
            return redirect('carprofile', car_id=car.id)
    else:
        form = CarForm()
    return render(request, 'add_car.html', {'form': form})

@login_required
def car_profile(request, car_id):
    car = get_object_or_404(Car, id=car_id)
    return render(request, 'car_profile.html', {'car': car})

#editar automovil
@login_required
def edit_car(request, car_id):
    car = get_object_or_404(Car, id=car_id, user=request.user)

    if request.method == 'POST':
        form = CarEditForm(request.POST, instance=car)
        if form.is_valid():
            form.save()
            return redirect('car_profile', car_id=car.id)

    else:
        form = CarEditForm(instance=car)

    return render(request, 'edit_car.html', {'form': form, 'car': car})

#Diagnostico Inical
@login_required
def chat_diagnostico(request):
    return render(request, 'chat_diagnostico.html')

#Diagnostico Inical
@login_required
def diagnostico_view(request):
    if request.method == 'POST':
        form = DiagnosticoForm(request.POST)
        if form.is_valid():
            
            diagnostico = form.save(commit=False)
            diagnostico.user = request.user
            
            diagnostico.save()

            parte = diagnostico.car_part
            sintoma = diagnostico.symptom

            resultados = obtener_resultados(parte, sintoma)

            return render(request, 'diagnostico_success.html', {'resultados': resultados})
    else:
        form = DiagnosticoForm()

    return render(request, 'diagnostico.html', {'form': form})

def obtener_resultados(parte, sintoma):
    if parte == 'motor' and sintoma == 'ruido':
        return ['Problema con el tensor de la cadena de distribución.', 'Falla en los taqués del motor.']
    elif parte == 'transmision' and sintoma == 'vibracion':
        return ['Problema con el convertidor de par.', 'Desgaste en los soportes de la transmisión.']
    elif parte == 'frenos' and sintoma == 'ruido':
        return ['Pastillas de freno desgastadas.', 'Discos de freno rayados.']
    elif parte == 'suspension' and sintoma == 'rebote':
        return ['Amortiguadores defectuosos.', 'Resortes de suspensión dañados.']
    elif parte == 'aire_acondicionado' and sintoma == 'no_enfria':
        return ['Fuga de refrigerante en el sistema.', 'Compresor del aire acondicionado averiado.']
    elif parte == 'luces' and sintoma == 'parpadeo':
        return ['Problemas en el regulador de voltaje.', 'Conexiones eléctricas sueltas.']
    elif parte == 'direccion' and sintoma == 'ruido':
        return ['Nivel bajo de líquido de dirección asistida.', 'Problemas en la bomba de dirección hidráulica.']

    else:
        return ['Sin resultados registrados']

@login_required
def diagnostico_success(request):
    return render(request, 'diagnostico_success.html')
    return render(request, 'ver_servicios.html', {'resultados': resultados})

#Ver Servicios
@login_required
def ver_servicios(request):
    servicios = Servicio.objects.all()
    resultados = request.GET.getlist('resultados')

    if resultados:
        servicios_relacionados = servicios.filter(category__in=resultados)
    else:
        servicios_relacionados = None

    if request.method == 'POST':
        servicio_id = int(request.POST.get('servicio_id', 0))
        if servicio_id > 0:
            carrito = request.session.get('carrito', [])
            carrito.append(servicio_id)
            request.session['carrito'] = carrito

    carrito_detalles = [get_object_or_404(Servicio, id=servicio_id) for servicio_id in request.session.get('carrito', [])]
    cantidad_en_carrito = len(request.session.get('carrito', []))

    return render(request, 'ver_servicios.html', {
        'servicios': servicios,
        'servicios_relacionados': servicios_relacionados,
        'carrito_detalles': carrito_detalles,
        'cantidad_en_carrito': cantidad_en_carrito,
    })

@login_required
def eliminar_servicio_carrito(request):
    if request.method == 'POST':
        servicio_id = int(request.POST.get('servicio_id', 0))
        if servicio_id > 0:
            carrito = request.session.get('carrito', [])
            carrito.remove(servicio_id)
            request.session['carrito'] = carrito

    return redirect('verservicios')

from django.http import JsonResponse
from django.core.mail import send_mail, EmailMessage
from django.template.loader import render_to_string
from core.models import  Cita

@login_required
def generar_factura(request):
    carrito_servicios_ids = request.session.get('carrito', [])
    servicios_adquiridos = Servicio.objects.filter(id__in=carrito_servicios_ids)

    if request.method == 'POST':
        factura_form = FacturaForm(request.POST)
        if factura_form.is_valid():
            nueva_factura = factura_form.save(commit=False)
            nueva_factura.user = request.user
            nueva_factura.save()
            nueva_factura.servicios.set(servicios_adquiridos)

            # Verifica si 'carrito' está presente en la sesión antes de intentar eliminarlo
            if 'carrito' in request.session:
                del request.session['carrito']

            # Redirige a la nueva vista que mostrará la factura generada
            return redirect('factura_generada', factura_id=nueva_factura.id)

    else:
        factura_form = FacturaForm()

    return render(request, 'generar_factura.html', {'servicios_adquiridos': servicios_adquiridos, 'factura_form': factura_form})

def factura_generada(request, factura_id):
    print("Factura ID:", factura_id)
    factura = get_object_or_404(Factura, id=factura_id)
    historial = Cita.objects.filter(usuario=request.user)
    return render(request, 'factura_generada.html', {'factura': factura, 'historial': historial},)


from django.core.mail import EmailMessage
from django.template.loader import render_to_string
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect, get_object_or_404
from .forms import FacturaForm  # Asegúrate de importar tu formulario

@login_required
def tu_vista_confirmar_pago(request, factura_id):
    # Obtén la factura existente
    factura = get_object_or_404(Factura, id=factura_id)
    historial = Cita.objects.filter(usuario=request.user)

    # Enviar factura por correo electrónico
    asunto = 'Confirmación de Pago'
    mensaje = f'Gracias por tu pago. Adjunto encontrarás los detalles de tu factura.\n\n'
    mensaje += f'Fecha de emisión: {factura. fecha_creacion}\n'

    destinatario = [factura.nombre]

    # Crear el objeto EmailMessage
    email = EmailMessage(
        asunto,
        mensaje,
        to=destinatario,
    )
    email.content_subtype = 'html'  # Usar contenido HTML si es necesario

    # Adjuntar el HTML de la factura (si decides mantenerlo)
    html_message = render_to_string('factura_generada2.html', {'factura': factura, 'historial': historial},)
    email.attach("factura_generada2.html", html_message, "text/html")

    # Enviar correo electrónico
    email.send()

    # Renderizar la plantilla de confirmación de pago
    return render(request, 'confirmacion_pago.html')

def vista_confirmacion_pago(request):
    return render(request, 'confirmacion_pago.html')

