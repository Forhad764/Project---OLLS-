
from django.conf.urls import url
from django.urls import path,include

from . import views

#for image upload----
from django.conf import settings
from django.conf.urls.static import static
#from Land_Data import  views

urlpatterns=[
    path('', views.home, name='home' ),
    path('Login', views.Login, name='Login'),
    path('Logout', views.Logout, name='Logout'),
    path('Register', views.Register, name='Register'),
    path('Recover-password/', views.Recover_password, name='Recover-password'),
    path('Forgot-password', views.Forgot_password, name='Forgot-password'),
    path('Dashboard', views.Dashboard, name='Dashboard'), 
    path('Profile',views.showuserdata),
    path('show_image',views.show_image,name='show_image'),
    path('landownersDashboard',views.landownersDashboard,name='landownersDashboard'),
    path('clientDashboard',views.clientsDashboard,name='clientDashboard'),
    path('Users',views.Users,name='Users'),
    path('landownerForm',views.landownerForm,name='landownerForm'),
    path('landowner_projects',views.landowner_projects,name='landowner_projects'),
    path('landowner_contacts',views.landowner_contacts,name='landowner_contacts'),
    path('clients_applied_projects',views.clients_applied_projects,name='clients_applied_projects'),
     path('remove_application',views.remove_application,name='remove_application'),

    path('gallery',views.gallery,name='gallery'),
    path('Doc_Verifier_Dashboard',views.Doc_Verifier_Dashboard,name='Doc_Verifier_Dashboard'),
    path('land_verifier_Dashboard',views.land_verifier_Dashboard,name='land_verifier_Dashboard'),
    path('all_contacts',views.all_contacts,name='all_contacts'),
    path('landowners_contacts',views.landowners_contacts,name='landowners_contacts'),
    path('clients_contacts',views.clients_contacts,name='clients_contacts'),
    path('Projects',views.Projects,name='Projects'),
    path('Submitted_for_review',views.Submitted_for_review,name='Submitted_for_review'),
    #path('Land_Data_submit',include(Land_Data.urls),name='Land_Data_Submit'),
    path('Land_Data_submit',views.Land_Data_submit),
    path('Future_work',views.Future_work),
    path('Land_verifier_submit',views.Land_verifier_submit),
    path('Doc_verifier_submit',views.Doc_verifier_submit),
   #path('category',views.category,name='category'), 
    path('rice_category',views.rice_category,name='rice_category'), 
    path('goat_category',views.goat_category,name='goat_category'),
    path('cow_category',views.cow_category,name='cow_category'),
    path('poultry_category',views.poultry_category,name='poultry_category'),
    path('fisheries_category',views.fisheries_category,name='fisheries_category'),
    path('vegetables_farming_category',views.vegetables_farming_category,name='vegetables_farming_category'),
   # path('Invoice',views.Invoice,name='Invoice'),
    path('Invoice_print',views.Invoice_print,name='Invoice_print'),
    path('clients_paid_projects',views.clients_paid_projects,name='clients_paid_projects'),
    path('Verified_lands',views.Verified_lands,name='Verified_lands'),
    path('Verified_docs',views.Verified_docs,name='Verified_docs'),
    path('agreement_complete',views.agreement_complete,name='agreement_complete'),
    path('payment',views.payment,name='payment'),
    path('map_view',views.map_view,name='map_view'),
    
    

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)