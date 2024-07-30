from django.db import models
from django.conf import settings

class TallerMecanico(models.Model):
    usuario = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='talleres', null=True)
    nombre_taller = models.CharField(max_length=200)
    direccion = models.CharField(max_length=200)
    numero_telefono = models.CharField(max_length=200)
    horarios_atencion = models.CharField(max_length=200)
    descripcion = models.CharField( max_length=500, verbose_name='Descripcion', null=True )

    def __str__(self):
        return self.nombre_taller
    
    class Meta:
        verbose_name = 'Taller'
        verbose_name_plural = 'Talleres'
        db_table = 'taller'
        ordering = ['id']


class Cita(models.Model):
    usuario = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, null=True)
    fecha = models.DateField()
    hora = models.TimeField()
    taller = models.ForeignKey('TallerMecanico', on_delete=models.CASCADE)

    def __str__(self):
        return f'Cita el {self.fecha} a las {self.hora}'
    
    class Meta:
        verbose_name = 'Cita'
        verbose_name_plural = 'Cítas'
        db_table = 'Cita'
        ordering = ['id'] 