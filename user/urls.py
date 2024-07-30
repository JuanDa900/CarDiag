from django.urls import path
from .views import user_login, profile, add_car, car_profile, user_logout, chat_diagnostico, edit_profile, delete_profile, edit_car, diagnostico_view, ver_servicios, diagnostico_success, eliminar_servicio_carrito,  generar_factura, factura_generada, tu_vista_confirmar_pago, vista_confirmacion_pago
urlpatterns = [
    path('login/', user_login, name='login'),
    path('logout/', user_logout, name='logout'),
    path('profile/', profile, name='profile'),
    path('edit_profile/', edit_profile, name='editprofile'),
    path('delete_profile/', delete_profile, name='deleteprofile'),
    path('addcar/', add_car, name='addcar'),
    path('car_profile/<int:car_id>/', car_profile, name='carprofile'),
    path('edit_car/<int:car_id>/', edit_car, name='editcar'),
    path('diagnostico_view/', diagnostico_view, name='diagnostico'),
    path('diagnostico_success/', diagnostico_success, name='diagnostico_success'),
    path('chat_diagnostico/', chat_diagnostico, name='chatdiagnostico'),
    path('ver_servicios/', ver_servicios, name='verservicios'),
    path('eliminar_servicio_carrito/', eliminar_servicio_carrito, name='eliminar_servicio_carrito'),
    path('generar_factura/', generar_factura, name='generar_factura'), 
    path('factura_generada/<int:factura_id>/', factura_generada, name='factura_generada'),
    path('tu_vista_confirmar_pago/<int:factura_id>/', tu_vista_confirmar_pago, name='tu_vista_confirmar_pago'),
    path('vista_confirmacion_pago/', vista_confirmacion_pago, name='vista_confirmacion_pago'),
    ]