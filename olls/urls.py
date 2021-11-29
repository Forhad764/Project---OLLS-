"""olls URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
#from django.contrib import admin
#from django.urls import path
from django.contrib import admin,auth,staticfiles
from django.urls import path ,include
from Home.views import showuserdata

admin.site.site_title = 'OLLS Administration'
admin.site.site_header  = 'OLLS Administration'

urlpatterns = [
    #Home app----------------------------------
    path('admin/', admin.site.urls),
    #path('',Home.home),
    path('',include('Home.urls')),
    path('home',include('Home.urls')),
    path('Login',include('Home.urls') ),
    path('Dashboard',include('Home.urls')),
    path('Register/',include('Home.urls')),
    path('Recover-password/',include('Home.urls')),
    path('Profile/',showuserdata),
    path('landownersDashboard',include('Home.urls')),
    path('clientDashboard',include('Home.urls')),
    path('landownerForm',include('Home.urls')),
    path('gallery',include('Home.urls')),    
    path('Future_work',include('Home.urls')),
    path('Projects',include('Home.urls')),
    
    #Land Data app------------------------
    path('Land_Data_submit',include('Land_Data.urls')),
    path('Recently_added',include('Land_Data.urls')),
    path('rice_category',include('Land_Data.urls')),
    path('Invoice',include('Land_Data.urls')),
    path('Invoice_print',include('Land_Data.urls')),
    path('list_data',include('Land_Data.urls')),
    path('Submitted_for_review',include('Land_Data.urls')),
    
]
