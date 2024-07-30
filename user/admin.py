from django.contrib import admin

from core.models import TallerMecanico , Cita
from user.models import UserCustom


# Register your models here.

admin.site.register(TallerMecanico)
admin.site.register(Cita)
admin.site.register(UserCustom)