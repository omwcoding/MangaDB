from django import forms
from .models import Collection

class CollectionForm(forms.ModelForm):
    class Meta:
        model = Collection
        fields = '__all__'  # O specifica i campi che desideri includere nel form
        exclude = ['completion_percentage', 'totalprice']