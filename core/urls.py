from django.urls import path
from . import views


urlpatterns = [
     path('talleres/', views.lista_talleres, name='lista_talleres'),
     path('info/<int:taller_id>/', views.detalle_taller, name='informacion_talleres'),
     path('programar-cita/', views.programar_cita, name='programar_cita'),
     path('historial_citas/', views.historial_citas, name='historial_citas'),
     path('reprogramar-cita/<int:cita_id>/', views.reprogramar_cita, name='reprogramar_cita'),
     path('cancelar-cita/<int:cita_id>/', views.cancelar_cita, name='cancelar_cita'),
]