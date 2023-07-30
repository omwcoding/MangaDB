from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Collection

@receiver(post_save, sender=Collection)
def update_total_price(sender, instance, **kwargs):
    instance.totalprice = instance.calculate_total_price()
    instance.save()
