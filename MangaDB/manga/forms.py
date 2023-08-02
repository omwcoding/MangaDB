from django import forms
from .models import Collection, Author, Publisher, Genre

class CollectionForm(forms.ModelForm):
    class Meta:
        model = Collection
        fields = '__all__'  # O specifica i campi che desideri includere nel form
        exclude = ['completion_percentage', 'totalprice']

class AuthorForm(forms.ModelForm):
    class Meta:
        model = Author
        fields = '__all__'

class PublisherForm(forms.ModelForm):
    class Meta:
        model = Publisher
        fields = '__all__'

class GenreForm(forms.ModelForm):
    class Meta:
        model = Genre
        fields = '__all__'