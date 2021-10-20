from django.contrib import messages
from django.contrib.auth import login
from django.contrib.auth.decorators import login_required
from django.db import transaction
from django.db.models import Count
from django.shortcuts import get_object_or_404, redirect, render
from django.urls import reverse_lazy
from django.utils.decorators import method_decorator
from django.views.generic import CreateView, ListView, UpdateView

from MySystem.decorators import customer_required
from MySystem.models import  User,Ads
from .forms import  CustomersSignUpForm,CustomersChangeForm,AdReqForm
from django.views import generic
from django.contrib.auth.forms import UserCreationForm, UserChangeForm,PasswordChangeForm,SetPasswordForm
from django.contrib.auth.views import PasswordContextMixin
from django.views.generic.edit import FormView
from django.contrib.auth import update_session_auth_hash
import time
from django.db.models import Max,Avg
from django.utils import timezone
from django.shortcuts import render
from django.http import HttpResponse
from MySystem.MySystemViews import home

class CustomersPassword(PasswordContextMixin,FormView):
    form_class = PasswordChangeForm
    success_url = ('/posts')
    template_name = 'Password.html'
    title = ('Password change')

    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)


    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs['user'] = self.request.user
        return kwargs

    def form_valid(self, form):
        form.save()
        # Updating the password logs out all other sessions for the user
        # except the current one.
        update_session_auth_hash(self.request, form.user)
        return super().form_valid(form)


def CustomersProfile(request,user):
        loger=User.objects.get(username=user)
        username=loger.username
        first_name=loger.first_name
        email=loger.email
        mobile_No=loger.mobile_No 
        if loger.is_customer:
            return render(request,'Profile.html',{'loger': loger,'username':username,'first_name':first_name,'email':email,'mobile_No':mobile_No})

def CustomersProfile_edit(request,user):
    user = request.user
    if request.method == 'POST':

        form = CustomersChangeForm(request.POST, instance=user)
        if form.is_valid():
            user = form.save()
            return redirect('CustomersProfile',user=user)
    else:
        form = CustomersChangeForm(instance=user)
    context = {'form': form}
    return render(request, 'profile_edit.html', context)

class CustomersSignUpView(CreateView):
    model = User
    form_class = CustomersSignUpForm
    template_name = 'signup_form.html'

    def get_context_data(self, **kwargs):
        kwargs['user_type'] = 'customer'
        return super().get_context_data(**kwargs)            
    def form_valid(self, form):
        user = form.save()
        login(self.request, user)
        return redirect('CustomersProfile',user=user)


def addrequest(request,pk):
    Ad = get_object_or_404(Ads, pk=pk)
    return render(request, 'requestform.html', {'Ad':Ad})

def confreq(request,pk):
    Ad = get_object_or_404(Ads, pk=pk)
    Ad.is_booked = True
    Ad.save()
    return redirect('home')
    
def acceptlist(request):
    cnt = Ads.objects.all()
    return render(request, 'acceptlist.html', {'cnt': cnt})

def pay(request,pk):
    Ad = get_object_or_404(Ads, pk=pk)
    Ad.is_paid=True
    return render(request, 'pay.html', {'Ad':Ad})