# Generated by Django 4.2.4 on 2023-11-17 13:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0012_alter_servicio_options_alter_servicio_table'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='diagnostico',
            name='Car',
        ),
    ]
