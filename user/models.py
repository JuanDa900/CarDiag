from django.db import models
from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.contrib.auth import get_user_model
from django.utils import timezone
from django import forms


class UserCustom(AbstractUser):

    age = models.PositiveIntegerField(verbose_name="Edad", null=True)

MARCA_CHOICES = [
    ('Toyota', 'Toyota'),
    ('Mazda', 'Mazda'),
    ('Honda', 'Honda'),
    ('Ford', 'Ford'),
    ('Chevrolet', 'Chevrolet'),

]

LINEA_CHOICES = [
    #Toyota choices
    ('Corolla', 'Corolla'),
    ('Camry', 'Camry'),
    ('Prius', 'Prius'),
    ('Rav4', 'Rav4'),
    ('Highlander', 'Highlander'),
    ('Tacoma', 'Tacoma'),
    ('Sienna', 'Sienna'),
    ('C-HR', 'C-HR'),
    ('Avalon', 'Avalon'),
    ('4Runner', '4Runner'),
    #Mazda choices
    ('Mazda3', 'Mazda 3'),
    ('Mazda6', 'Mazda 6'),
    ('CX-5', 'CX-5'),
    ('MX-5 Miata', 'MX-5 Miata'),
    ('CX-9', 'CX-9'),
    ('Mazda2', 'Mazda 2'),
    ('Mazda5', 'Mazda 5'),
    ('RX-8', 'RX-8'),
    ('CX-30', 'CX-30'),
    ('MX-30', 'MX-30'),
    # Honda choices
    ('Civic', 'Civic'),
    ('Accord', 'Accord'),
    ('CR-V', 'CR-V'),
    ('Pilot', 'Pilot'),
    ('Fit', 'Fit'),
    ('HR-V', 'HR-V'),
    ('Ridgeline', 'Ridgeline'),
    ('Odyssey', 'Odyssey'),
    ('Insight', 'Insight'),
    ('Passport', 'Passport'),
    # Ford choices
    ('Focus', 'Focus'),
    ('Fusion', 'Fusion'),
    ('Escape', 'Escape'),
    ('Explorer', 'Explorer'),
    ('Mustang', 'Mustang'),
    ('Edge', 'Edge'),
    ('F-150', 'F-150'),
    ('Expedition', 'Expedition'),
    ('Ranger', 'Ranger'),
    ('EcoSport', 'EcoSport'),
    # Chevrolet choices
    ('Malibu', 'Malibu'),
    ('Cruze', 'Cruze'),
    ('Equinox', 'Equinox'),
    ('Traverse', 'Traverse'),
    ('Silverado', 'Silverado'),
    ('Blazer', 'Blazer'),
    ('Suburban', 'Suburban'),
    ('Colorado', 'Colorado'),
    ('Tahoe', 'Tahoe'),
    ('Spark', 'Spark'),

]

TIPO_CHOICES = [
    ('gasolina', 'Gasolina'),
    ('gas', 'Gas'),
    ('diésel', 'Diésel'),

]

CAR_PART_CHOICES = [
    ('motor', 'Motor'),
    ('transmision', 'Transmision'),
    ('frenos', 'Frenos'),
    ('suspension', 'Suspension'),
    ('aire_acondicionado', 'Aire acondicionado'),
    ('luces', 'Luces'),
    ('direccion', 'Direccion'),
]

SYMPTOM_CHOICES = [
    ('ruido', 'Ruido'),
    ('vibracion', 'Vibracion'),
    ('rebote', 'Rebote'),
    ('no_enfria', 'No enfria'),
    ('parpadeo', 'Parpadeo'),
]

class Car(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    name = models.CharField(max_length=20, verbose_name='Nombre Vehiculo', null=True)
    marca = models.CharField(max_length=50, choices=MARCA_CHOICES, verbose_name='Marca', null=True)
    linea = models.CharField(max_length=50, choices=LINEA_CHOICES, verbose_name='Linea', null=True)
    modelo = models.PositiveIntegerField(verbose_name='Modelo', null=True)
    placa = models.CharField(max_length=7, verbose_name='Placa', null=True)
    tipo = models.CharField(max_length=20, choices=TIPO_CHOICES, verbose_name='Tipo', null=True)
    kilometraje = models.PositiveBigIntegerField(verbose_name='Kilometraje', null=True)
    Hibrido = models.BooleanField(default=False, verbose_name='Hibrido & ISG')

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'Vehiculo'
        verbose_name_plural = 'Vehiculos'
        db_table = 'vehiculo'
        ordering = ['id']

class Diagnostico(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

    car_part = models.CharField(max_length=50, choices=CAR_PART_CHOICES, verbose_name='Parte', null=True)
    symptom = models.CharField(max_length=50, choices=SYMPTOM_CHOICES, verbose_name='Falla', null=True)

    def __str__(self):
        return self.car_part
    
    class Meta:
        verbose_name = 'Diagnostico'
        verbose_name_plural = 'Diagnosticos'
        db_table = 'diagnostico'
        ordering = ['id']

class Servicio(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    category = models.CharField(max_length=255, null=True)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'Servicio'
        verbose_name_plural = 'Servicios'
        db_table = 'servicio'
        ordering = ['id']

class Factura(models.Model):
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)
    servicios = models.ManyToManyField(Servicio)
    nombre = models.CharField(max_length=100)
    
    METODOS_DE_PAGO = [
        ('nequi', 'Nequi'),
        ('tarjeta_credito', 'Tarjeta de Crédito'),
        ('tarjeta_debito', 'Tarjeta de Débito'),
        ('efectivo', 'Efectivo'),
    ]    

    modo_pago = models.CharField(max_length=50, choices=METODOS_DE_PAGO)    
    fecha_creacion = models.DateTimeField(default=timezone.now)

    IVA_PERCENTAGE = 12  # Ajusta según el porcentaje de IVA que desees aplicar

    def total_factura(self):
        subtotal = sum(servicio.price for servicio in self.servicios.all())
        return subtotal

    def total_factura_con_iva(self):
        subtotal = self.total_factura()
        iva = (subtotal * self.IVA_PERCENTAGE) / 100
        total_con_iva = subtotal + iva
        return total_con_iva

    def __str__(self):
        return f'Factura {self.id} - {self.nombre}'
 

