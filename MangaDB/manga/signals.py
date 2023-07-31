from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from .models import Collection, MangaVolume

@receiver(post_save, sender=Collection)
def update_total_price(sender, instance, **kwargs):
    totalprice = instance.calculate_totalprice()
    Collection.objects.filter(pk=instance.pk).update(totalprice=totalprice)

@receiver([post_save, post_delete], sender=MangaVolume)
def update_collection_completion_percentage(sender, instance, **kwargs):
    collection = instance.collection
    collection.update_completion_percentage()