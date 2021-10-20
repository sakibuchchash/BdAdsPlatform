from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.db import transaction
from MySystem.models import User,Ads

class PublishersChangeForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ('username', 'email','first_name','mobile_No')


class PublishersSignUpForm(UserCreationForm):

    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username', 'email','first_name','mobile_No','publisher_type')

    @transaction.atomic
    def save(self, commit=True):
        user = super().save(commit=False)
        user.is_publisher = True
        if commit:
            user.save()
        return user

class AdsForm(forms.ModelForm):

    class Meta:
        model = Ads
        fields = ('title', 'adtype','adCategory','price','is_news')

    def __str__(self):
        return self.publisher