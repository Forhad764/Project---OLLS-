
from django.conf.urls import url
from django.urls import path

from . import views
#from Home import views

#for image upload----
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[
    #path('', views.home, name='home'),
    #path('Login', views.Login, name='Login'),
    #path('Logout', views.Logout, name='Logout'),
    #path('Register', views.Register, name='Register'),
    #path('Recover-password/', views.Recover_password, name='Recover-password'),
    #path('Forgot-password', views.Forgot_password, name='Forgot-password'),
    #path('Dashboard', views.Dashboard, name='Dashboard'), 
    #path('Profile',views.showuserdata),
    #path('show_image',views.show_image,name='show_image'),
    #path('landownersDashboard',views.landownersDashboard,name='landownersDashboard'),
    #path('clientDashboard',views.clientsDashboard,name='clientDashboard'),
    #path('Users',views.Users,name='Users'),
    #path('landownerForm',views.landownerForm,name='landownerForm')
    #path('gallery',views.gallery,name='gallery'),  
    path('Land_Data_submit', views.Land_Data_submit ,name='Land_Data_submit'),
    #path('Projects',views.Projects, name= 'Projects'),
    path('Recently_added',views.Recently_added,name='Recently_added'),
    path('rice_category',views.rice_category,name='rice_category'),
    path('',views.Invoice,name='Invoice'),
    path('',views.Invoice_print,name='Invoice_print'),
    path('Submitted_for_review',views.Submitted_for_review,name='Submitted_for_review'),
    path('Land_verifier_submit',views.Land_verifier_submit,name='Land_verifier_submit'),
    path('category',views.category,name='category'),
   # path('rice_category',views.rice_category,name='rice_category'),
    #path('goat_category',views.goat_category,name='goat_category'),
    path('list_data',views.list_data,name='list_data'),
    #path('clients_paid_projects',views.clients_paid_projects,name='clients_paid_projects'),
 #   clients_paid_projects     

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

