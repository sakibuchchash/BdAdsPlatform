from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.db import transaction
from .models import User,Ads
import django_filters

class UserFilter(django_filters.FilterSet):
    class Meta:
        model = Ads
        fields = ['publisher', 'adCategory', 'adtype', 'price',]


"""
FRUIT_CHOICES= [
    ('orange', 'Oranges'),
    ('cantaloupe', 'Cantaloupes'),
    ('mango', 'Mangoes'),
    ('honeydew', 'Honeydews'),
    ]       
class UserForm(forms.Form):
    favorite_fruit= forms.CharField(label='What is your favorite fruit?', widget=forms.Select(choices=FRUIT_CHOICES))
"""