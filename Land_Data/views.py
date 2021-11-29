from django.shortcuts import render

# Create your views here.
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout 
from django.contrib.auth.models import User,auth,Group
from django.contrib.auth.admin import GroupAdmin

from django.contrib import messages
from .models import extendedProfile,Land_Data
#from Home import views.Profile_data

from django.contrib.auth.decorators import login_required
'''
from django.contrib.auth.decorators import login_required

@login_required(login_url='/login/')
'''
#def gallery(request):
 #   return render(request,'clients/gallery.html')

@login_required(login_url='/login/')
def user_id(request):
        from django.contrib.auth.models import User,auth,Group
        from Home.models import extendedProfile
        user=request.user
        return user.id

def Land_Data_submit(request):
    from django.contrib.auth.models import User,auth,Group
    from Home.models import extendedProfile
    from django.template.defaultfilters import slugify

    if request.method == 'POST':
            #nid = request.POST["user_nid"]
            #nid = request.POST[extendedProfile.nid]
            category = request.POST.getlist('category')
            #def list_to_string(request):
            category = ','.join(category)
            #
            land_title = request.POST.get('Land_title')
            slug       = slugify(land_title)
            location = request.POST.get('Location')
            map_latitude=request.POST.get('map_latitude')
            map_longitude=request.POST.get('map_longitude')
            detail_addr= request.POST.get('detail_addr')
            land_img = request.FILES.get('Land_img')
            khotian_img = request.FILES.get('Khotian_img')
            dolil_img = request.FILES.get('Dolil_img')
            land_area = request.POST.get('Land_Area')
            monthly_charge = request.POST.get('monthly_charge')
            soil_type   = request.POST.get('Soil_type')
            month       = request.POST.get('month')
            year        = request.POST.get('year')

            #user=request.user
            #user=extendedProfile.objects.get(nid=request.user.id)
            #user= request.User.get(id)
            #project_id = Land_Data('id')
            #user=user.id 
            user=user_id(request)

                # 
            Data = Land_Data( id=user,title =land_title,slug=slug, size  = land_area, location = location, land_img = land_img , dolil_img  = dolil_img, khotian_img=khotian_img, allow_status= 0 , category_id = category,   area = land_area , monthly_charge = monthly_charge,detail_addr=detail_addr,soil_type=soil_type,month=month,year=year,map_latitude=map_latitude,map_longitude=map_longitude ) #nid  = nid,,,project_id=project_id
        
            Data.save()

            messages.info(request,'Data Posted for review')
            print('Data Posted for review')
            
    
           # return redirect( landownerForm)

    else:
            return render(request,'landowners/form.php')

#Allow Applied Project status---------------------------------
'''
def Allow_Project_status(request):
        Data= Land_Data(allow_status='1')
        Data.save()
        message = messages.info(request,'Data Posted ')
        print('Data Posted')
        return render(request, 'clients/projects.php',{'message': message })
'''
#Deny Applied Project status---------------------------------
'''
def Deny_Project_status(request):
        Data= Land_Data(allow_status='0')
        Data.save()
        message = messages.info(request,'Data Denied ')
        print('Data Denied')
        return render(request, 'clients/projects.php',{'message': message })

'''

#Recently added -------------------------------------

def Recently_added(request):
        #id = Land_Data.objects.filter(request.len(id))
        from .models import Land_Data,User
        #Land_Data = Land_Data.objects.filter(allow_status=True)
       # land_img =   Land_Data[len(Land_Data)-1].title
        #land_img      = land_img( request )
        #title         = Land_Data[len(id)-1].title
        #land_area     = Land_Data[len(id)-1].area
        
    # ---------
        context = {} 
  
    # add the dictionary during initialization 
        context["dataset"] = Land_Data.objects.filter(allow_status=True) 
        return context["dataset"]
    #return render(request, "list_view.html", context)

        #return render(request,'clients/index.php', context) #{ 
                                                   #'land_img':land_img,
                                                   #'title'   :title,
                                                   #'land_area':land_area
                                                   #} )

#--------------Show land img ----------------------------
def land_img(request):
    from .models import Land_Data
    #data = Land_Data.objects.all()

    id = Land_Data.objects.filter(id=request.id)
    land_img =  Land_Data[len(ID)-1].img
    return land_img
#--------------------

#--------------Gallery caterory added -------------------------------------

#--------------rice caterory added -------------------------------------
def rice_category(request):
        
        from .models import Land_Data,User
        from Home.views import user_img
        Profile_data=user_img(request)
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id ="Rice-Farming") 
        return context["dataset"]
#--------------goat caterory added -------------------------------------
def goat_category(request):
        
        from .models import Land_Data,User
        
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id="Goat-Farming") 
        return context["dataset"]
    
#--------------Cow caterory added -------------------------------------Cow Farming
def cow_category(request):
        
        from .models import Land_Data,User
        
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id="Cow-Farming") 
        return context["dataset"]
    
#--------------fisheries caterory added -------------------------------------Fisheries
def fisheries_category(request):
        
        from .models import Land_Data,User
        
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id="Fisheries") 
        return context["dataset"]
    
#--------------Poultry caterory added -------------------------------------
def poultry_category(request):
        
        from .models import Land_Data,User
        
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id="Poultry") 
        return context["dataset"]

def vegetables_farming_category(request):
        from .models import Land_Data,User
        
        context = {} 
        context["dataset"] = Land_Data.objects.filter(allow_status=True,category_id="Vegetables-Farming") 
        return context["dataset"]

#--------------Customer Invoice -------------------------------------
def Invoice(request):
        from .models import Land_Data,User
        from Home.models import extendedProfile
        from Land_Data.models import applied_data,Category
        from django.contrib.auth.models import User,auth,Group
        from Home.views import user_img

        
        user=request.user
        project_id = request.POST.get('project_id')
        monthly_charge = request.POST.get('monthly_charge')
        owner_id=request.POST.get('owner_id')
        detail_addr=request.POST.get('detail_addr')
        project_title = request.POST.get('project_title')
        project_id=Land_Data.objects.get(pk =project_id)
        print(project_title)
        print(project_id)
        print(monthly_charge)
        print(owner_id)
        Profile_data=user_img(request)

        from Land_Data.views import user_details
        user_details=user_details(request)
        
        Data = applied_data( user=user.id,project_id=project_id,project_title=project_title,monthly_charge=monthly_charge ) #nid  = nid,category=category,, project_id=project_id.id
        
        Data.save()
        date = date_and_time(request)
        
        return render(request,'clients\invoice.php',{'d':project_title,
                                                     'Profile_data':Profile_data.url,
                                                     'date':date,
                                                     'user_details':user_details,
                                                     'monthly_charge':monthly_charge,
                                                     'project_id':project_id,
                                                     'detail_addr':detail_addr,
                                                     })   #,{'Data':Data} #,context["dataset"] 


#-------------------------remove_application-------------------
def remove_application(request):
        from .models import Land_Data,User
        from Home.models import extendedProfile
        from Land_Data.models import applied_data,Category
        from django.contrib.auth.models import User,auth,Group
        from Home.views import user_img
        from Land_Data.views import Recently_added 


        user=request.user
        project_id = request.POST.get('project_id')
        monthly_charge = request.POST.get('monthly_charge')
        owner_id=request.POST.get('owner_id')
        detail_addr=request.POST.get('detail_addr')
        project_title = request.POST.get('project_title')
        project_id=Land_Data.objects.get(title =project_title)
        print(project_title)
        print(project_id)
        print(monthly_charge)
        print(owner_id)
        Profile_data=user_img(request)

        from Land_Data.views import user_details
        user_details=user_details(request)
        
        Data = applied_data.objects.filter( user=user.id,project_id=project_id,project_title=project_title,monthly_charge=monthly_charge ) #nid  = nid,category=category,, project_id=project_id.id
        
        Data.delete()
        
        applied_projects=clients_applied_projects(request)
       
        return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'applied_projects':applied_projects})

        
                                                     
#---------------------User details method---------------
def user_details(request):
        from Home.models import extendedProfile,User
        from django.contrib.auth.models import User,auth,Group
        user=request.user
        user_details= extendedProfile.objects.filter(user_id=user.id)

        #nid=extendedProfile
        return user_details 
        
#---------------------monthly_charge method---------------
#def monthly_charge(request):
        #from Home.models import extendedProfile,User,Land_Data
 #       from django.contrib.auth.models import User,auth,Group
 #       from Land_Data.views import user_details
#user=request.user
  #      user_details= user_details(request)


    #    monthly_charge= Land_Data.objects.filter(monthly_charge=user_details)
        
        #nid=extendedProfile
    #    return monthly_charge

#----------------application data-----------------
'''
def applications(request):
        from Home.models import extendedProfile,User
        from django.contrib.auth.models import User,auth,Group
        from Land_Data.models import applied_data
        user=request.user
        user_details= extendedProfile.objects.filter(user_id=request.user)
        app_id=applied_data.objects.filter(user=request.user)
        
        #from Land_Data.views import user_details
        #from django.contrib.auth.models import User,auth,Group
        #user=user_details(request)
        #app_id=applied_data.objects.filter(user=user_details)
        #applied_data_id= app_id.id#applied_data.objects.filter(user=user_details)
        #nid=extendedProfile
        return app_id
'''
#--------------Customer Invoice-print -------------------------------------

def Invoice_print(request):
        from .models import Land_Data,User
        from Home.models import extendedProfile
        from Land_Data.models import applied_data,Category
        from django.contrib.auth.models import User,auth,Group
        from Home.views import user_img
        from land_data.views import list_data

        #id = Land_Data.id
        #user=request.user
        #pid=request.Land_Data
        #request_id = request.POST.get('{{request_id}}')
        #monthly_charge = request.POST.get('monthly_charge')
        #project_title = Land_Data.objects.get(project_id=request_id)
        #print(project_title)
        #Profile_data=user_img(request)
        #app_id = {{request_id}}
       # detail_addr=request.POST.get('detail_addr')
        #from Land_Data.views import user_details
       # user_details=user_details(request)
        #Data = applied_data( user=user.id,project_id=project_title ) 
        
        #Data.save()
        date = date_and_time(request)
        return render(request,'clients\invoice-print.html',{    #'d':project_title,
                                                                #'Profile_data':Profile_data.url,
                                                                'date':date,
                                                                #'user_details':user_details,
                                                                #'monthly_charge':monthly_charge,
                                                                #'app_id':app_id,
                                                                #'detail_addr':detail_addr,
                                                                })   


        

#-----------------------Submitted Projects--------------------------

def Submitted_for_review(request):
        from .models import Land_Data,User,extendedProfile
        #Land_Data = Land_Data.objects.filter(allow_status=True)
       # land_img =   Land_Data[len(Land_Data)-1].title
        #land_img      = land_img( request )
        #title         = Land_Data[len(id)-1].title
        #land_area     = Land_Data[len(id)-1].area
        
    # ---------
        #context = {} 
  
    # add the dictionary during initialization 
        #context["dataset"] = Land_Data.objects.values(allow_status=False) 
        return render(request,'landowners/projects.php')#,context["dataset"]
#-------------------------------------------------------

#--------------------doc-verifier-slide-------------------------
def land_doc(request):
        from .models import Land_Data
        

#----------------------For Slug--------------------------------
#def Slug_text(request):
       # from django.template.defaultfilters import slugify
      #  slugify(land_title)

#------------------Land_verifier_submit---------------------------
def Land_verifier_submit(request):
        from .models import Verification
        project_id=request.POST.get('project_id')
        Location=request.POST.get('Location')
        status=request.POST.get('status')
        Land_size=request.POST.get('Land_size')
        land_ver_com=request.POST.get('Doc_comment')
        
        user=request.user
        Data = Verification( project_id_id=project_id,	land_ver_usr=user.id,loc_ver=Location,land_size_ver=Land_size,status_ver=status,land_ver_com=land_ver_com ) #nid  = nid,,,project_id=project_id
        Data.save()
        from .views import Recently_added,Submitted_for_review
        datas=Submitted_for_review(request)
        land_status=("Verified")#verification_status(request)

        
        recently_added=Recently_added(request)
        
        return render(request,'land_verifier/verified_lands.php',{'project_id':project_id,
                                                         'land_status':land_status,

                                                         'Submitted_for_review':datas,
                                                         'recently_added':recently_added,
         
                                                         })
        

            
            

#----------------------------verification status----------------------
def verification_status(request):
        from .models import Verification
        #project_id=Verification.objects.filter(project_id_id=project_id)
        data=Verification.objects.all()
        
        print(data)
        
#------------------Doc_verifier_submit---------------------------
def Doc_verifier_submit(request):
        from .models import Verification
        project_id=request.POST.get('project_id')
        Doc_verified=request.POST.get('Doc_verified')
        Land_comment=request.POST.get('Doc_comment')
        user=request.user
        Data = Verification( project_id_id=project_id,	doc_ver_usr=user.id,doc_ver=Doc_verified,doc_ver_com=Land_comment ) #nid  = nid,,,project_id=project_id
        Data.save()
        from .views import Recently_added,Submitted_for_review
        datas=Submitted_for_review(request)
        land_status=("Verified")#verification_status(request)

        
        recently_added=Recently_added(request)
        
        return render(request,'doc_verifier/verified_docs.php',{'project_id':project_id,
                                                         'land_status':land_status,

                                                         'Submitted_for_review':datas,
                                                         'recently_added':recently_added,
         
                                                         })
        
#-----------------------------------------------------
def category(request):
        categories=Land_Data.objects.all()

        return categories
#-------------------------------------------------------

def date_and_time(request):
        import datetime
        date = datetime.datetime.now().strftime ("%Y-%m-%d")
        #20151015
        return date

#--------------Dictionary method----------------------------

def list_data(request):
   
   request_id=request.POST.get('request_id',None)
   detail_addr=request.POST.get('detail_addr',None)
   monthly_charge=request.POST.get('monthly_charge',None)
   context = {
        "request_id" : request_id,
        "detail_addr": detail_addr,
        "monthly_charge": monthly_charge
        }
   return render(request,'invoice-print.html',context)  



#--------------------Landowner all projects------------------
def landowner_projects(request):
        from .views import user_details
        from .models import Land_Data
        user_id=user_details(request)
        
        landower_projects=Land_Data.objects.raw('select id,title,project_id,allow_status,category_id from land_data_land_data group by allow_status having count(id)>1 ')

        return landower_projects

#--------------------Clients all projects------------------
def clients_applied_projects(request):
        from .views import user_details
        from .models import Land_Data#,payment_data
        #payment_status=Land_Data.objects.filter(id=payment_data.user_id)
        user_id=user_details(request)
        #data=payment_data.payment_status
        user=request.user
        #clients_applied_projects=Land_Data.objects.raw('select id,user,project_id_id from land_data_applied_data group by project_id_id having count(id)>1 ')
        from .models import applied_data
        from Home.models import extendedProfile
        clients_applied_projects=applied_data.objects.filter(user=user.id)
        return clients_applied_projects

#--------------------Clients all projects------------------
'''
def clients_paid_projects(request):
        from .views import user_details
        from .models import Land_Data,payment_data,applied_data
        title=applied_data.objects.filter(user=request.user)
        user_id=user_details(request)
        #data=payment_data.payment_status
        
        clients_id_paid = payment_data.objects.filter(user_id=request.user)
        clients_project_id = payment_data.objects.filter(project_id=request.user)

        clients_paid_projects=payment_data.objects.all()
        
        #application_id = applied_data.objects.filter(id=request.user)
        #if clients_id_paid == clients_project_id :
        #        app_id=applied_data.objects.filter(id=clients_project_id)
        
         #       return app_id 
        return clients_paid_projects
       ''' 
#--------------------------------