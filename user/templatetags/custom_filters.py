from django import template

register = template.Library()

@register.filter(name='price_total')
def price_total(servicios):
    return sum([servicio.price for servicio in servicios])