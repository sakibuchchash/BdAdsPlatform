from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.db import transaction
from MySystem.models import User,Ads


class  CustomersChangeForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ('username','email','first_name','mobile_No')

class CustomersSignUpForm(UserCreationForm):
    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username','email','first_name','mobile_No')
        

    @transaction.atomic
    def save(self):
        user = super().save(commit=False)
        user.is_customer = True
        user.save()
        return user


class AdReqForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ('username', )


