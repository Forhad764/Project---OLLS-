#from django.shortcuts import render

# Create your views here.
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout 
from django.contrib.auth.models import User,auth,Group
from django.contrib.auth.admin import GroupAdmin

from django.contrib import messages
from .models import extendedProfile
from django.contrib.auth.decorators import login_required
#from django.http import render_to_response

# Create your views here.

#calling home page-------------------
def home(request):
    #return HttpResponse('Hello World' )
    return render(request,'index.php')

def Dashboard(request):
    #return HttpResponse('Hello World' )
    
    from .models import User,extendedProfile
    #from .views import user_count
    users = extendedProfile.objects.filter(user=request.user)
    Profile_data =  users[len(users)-1].img
    #print('picture url : '+ Profile_data.url)
    landowner_count=landowner_counter(request)
    client_count=client_counter(request)
    
    if request.user.is_staff:
            #Profile_data =  users[len(users)].img
            #user_count(request)
            from Land_Data.views import Recently_added
            recently_added=Recently_added(request)
            admin_count=admin_counter(request)
            #landowner_count=landowner_counter(request)  
            #client_count=client_counter(request)
            land_verifier_count=land_verifier_counter(request)
            doc_verifier_count=doc_verifier_counter(request)
            

            return render(request,'admin/index.php',{'Profile_data': Profile_data.url,
                                                     'admin_count':admin_count,
                                                     'landowner_count':landowner_count,
                                                     'client_count':client_count,
                                                     'recently_added':recently_added,
                                                     'land_verifier_count':land_verifier_count,
                                                     'doc_verifier_count':doc_verifier_count} )
    elif request.user.groups.filter(name='Clients').exists():
            from Land_Data.views import Recently_added,category
            recently_added=Recently_added(request)
            categories=category(request)
            #landowner_count=landowner_counter(request)
            #goat_category=goat_category(request)
            return render(request,'clients/index.php',{ 'Profile_data': Profile_data.url,
                                                        'recently_added':recently_added,
                                                        'landowner_count':landowner_count,
                                                        #'goat_category':goat_category,
                                                        'categories':categories,
                                                        })
    elif request.user.groups.filter(name='Land-Owners').exists():
            from Land_Data.views import Recently_added,landowner_projects
            #from .views import 
            from Land_Data.models import applied_data
            recently_added=Recently_added(request)
            total_projects=total_project_counter(request)
            client_count=client_counter(request)
            #landowner_projects=landowner_projects(request)
            return render(request,'landowners/index.php',{'Profile_data': Profile_data.url,
                                                          'recently_added':recently_added,
                                                          'landowner_projects':landowner_projects,
                                                          'client_count':client_count,
                                                          'total_projects':total_projects,
                                                        })
    elif request.user.groups.filter(name='Doc-verifier').exists():
            from Land_Data.views import Recently_added
            recently_added=Recently_added(request)
            datas=Submitted_for_review(request)
            return render(request,'doc_verifier/index.php',{'Profile_data': Profile_data.url,
                                                            'recently_added':recently_added,
                                                            'Submitted_for_review':datas
                                                            })
    elif request.user.groups.filter(name='Land-verifier').exists():
            from Land_Data.views import Recently_added
            recently_added=Recently_added(request)
            datas=Submitted_for_review(request)
            return render(request,'land_verifier/index.php',{'Profile_data': Profile_data.url,
                                                             'Submitted_for_review':datas,
                                                             'recently_added':recently_added, 
                                                            })
    elif request.user.groups.filter(name='Clients').exists():
            return render(request,'index.php')
    else:
            Logout(request)
            return render(request,'Login.php')
    
    
#return render(request,"admin/index.php",{'Profile_data': Profile_data.url} )
    
#Login function-----------------------
def Login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
        # A backend authenticated the credentials
            login(request, user)
            print('Login success')
            from .models import User,extendedProfile
            #-------------check-------
            users = extendedProfile.objects.filter(user=request.user)
            
            #Profile_data =  users[len(users)-1].img
            #img =  extendedProfile.objects.filter(img=request.user)
            
            #Profile_data=extendedProfile.img
            #print( Profile_data)               
            #----------------------------
            #show_image(request)                
            if request.user.is_staff:
            #if request.user.groups.filter(name='admin').exists():
                Profile_data =  users[len(users)-1].img
                #showuserdata(request)
                #count_users(request)
                admin_count=admin_counter(request)
                landowner_count=landowner_counter(request)
                client_count=client_counter(request)
                land_verifier_count=land_verifier_counter(request)
                doc_verifier_count=doc_verifier_counter(request)
                #Recently_added=Recently_added(request)
                # from Land_Data.views import Recently_added
                from Land_Data.views import Recently_added
                recently_added=Recently_added(request)                
                return render(request,'admin/index.php',{'Profile_data': Profile_data.url,
                                                     'admin_count':admin_count,
                                                     'landowner_count':landowner_count,
                                                     'client_count':client_count,
                                                     'land_verifier_count':land_verifier_count,
                                                     'doc_verifier_count':doc_verifier_count,
                                                     'recently_added':recently_added,
                                                     })
            elif request.user.groups.filter(name='Clients').exists():
                Profile_data =  users[len(users)-1].img
                landowner_count=landowner_counter(request)
                from Land_Data.views import Recently_added
                recently_added=Recently_added(request)                
                return render(request,'clients/index.php',{ 'Profile_data': Profile_data.url,
                                                            'recently_added':recently_added,
                                                            'landowner_count':landowner_count, 
                                                            })
            elif request.user.groups.filter(name='Land-Owners').exists():
                Profile_data =  users[len(users)-1].img
                from Land_Data.views import Recently_added
                recently_added=Recently_added(request)
                client_count=client_counter(request)
                total_projects=total_project_counter(request)
                client_count=client_counter(request)
                return render(request,'landowners/index.php',{ 'Profile_data': Profile_data.url,
                                                               'recently_added':recently_added,
                                                               'client_count':client_count,
                                                               'total_projects':total_projects,
                                                              })
            elif request.user.groups.filter(name='Doc-verifier').exists():
                Profile_data =  users[len(users)-1].img
                from Land_Data.views import Recently_added
                recently_added=Recently_added(request)
                datas=Submitted_for_review(request)

                
                
                return render(request,'doc_verifier/index.php',{'Profile_data': Profile_data.url,
                                                                'Submitted_for_review':datas,
                                                                'recently_added':recently_added,
                                                                #'LandData':La
                                                                })
                #return render(request,'doc_verifier/index.php',{'Profile_data': Profile_data.url})
            elif request.user.groups.filter(name='Land-verifier').exists():#land_verifier
                Profile_data =  users[len(users)-1].img
                from Land_Data.views import Recently_added
                recently_added=Recently_added(request)
                datas=Submitted_for_review(request)
                return render(request,'land_verifier/index.php',{'Profile_data': Profile_data.url,
                                                                'Submitted_for_review':datas,
                                                                'recently_added':recently_added,
                                                                #'LandData':La
                                                                })#,{'Profile_data': Profile_data.url}
            #elif request.user.groups.filter(name='Clients').exists():
            #    return render(request,'index.php')
            else:
                Logout(request)
                return render(request,'Login.php')
        else:
            messages.info(request,'Invalid credentials')
            print('Login failed')
            return render(request,'Login.php')
            

    else :
    # No backend authenticated the credentials
        return render(request,'Login.php')
#Logout Function------------------------
def Logout(request):
    logout(request)
    
    return render(request, 'index.php')
#Registration--------------------
#from django.contrib.auth.forms import UserCreationForm
#def create_user(state, username, email=None, password=None, **extra_fields):
 #       extra_fields.setdefault('is_staff', False)
  #      extra_fields.setdefault('is_superuser', False)
   #     extra_fields.setdefault('img',False)
    #    return state._create_user(username , email, password, **extra_fields)

#-----------------------------------
def Register(request):
    if request.method == 'POST':
        user_name = request.POST['User_name']
        first_name = request.POST ['First_name']
        last_name = request.POST ['Last_name']
        img = request.FILES['img']
        email = request.POST['Email']
        nid = request.POST['NID']
        phone   = request.POST['phone_num']
        password = request.POST['Password']
        Retype_password = request.POST['Retype_password']
        #last_login=request.POST.get(connectio)
        
        
        #-------
        
        if password == Retype_password:
            if User.objects.filter(username=user_name).exists():
                messages.info(request,'Username Already taken')
                print('Username Already taken')
                return redirect('Register')
            elif User.objects.filter(email=email).exists():
                messages.info(request,'This email already registered')
                print('This email already registered')
                return redirect('Register')
            else:    
                user = User.objects.create_user(username=user_name, first_name=first_name,last_name=last_name, email=email,password=password)
                profile  =   extendedProfile(nid=nid,user_id=user.id,user=user,full_name=first_name,phone_num=phone,img=img)
                profile.save()
                category = request.POST['Category']
                group = Group.objects.get(id = category)
                user.groups.add(group)
                
                
                messages.info(request,'user created')
                print('user created')
                return redirect('Register')
        else: 
            messages.info(request,'Password not matched')
            return redirect('Register')

        
        #return render(request,'./admin/index.php')
    else:
        #messages.success(request,'Enter valid data')
        return render(request,'Register.php')




    #form=UserCreationForm()
    #context={'form':form}
    #return render(request,'Register.php',context)    

#------Rename & upload image----------------------
'''
import os
import django.conf import settings
def rename_image(request):
    print('request handling.........')
    name=Register.objects.get(nid)
    name.image.name
   # p = request.FILES['img'];
  #  from .models import extendedProfile

   # img = extendedProfile(img = p);
   # img.save();
    #return render(request,'Register.php')
'''
#-------Read image----------------
def show_image(request):
    
    from .models import User,extendedProfile,Land_Data
    users = extendedProfile.objects.all()
    #Profile_pic =  users[len(users)-1].img
    #print('picture url : '+ Profile_pic.url)
    
    
    
    
    return render(request,"admin/index.php",{'Profile_pic': users })
      


#Forgot password email-----------------------
def Forgot_password(request):
    return render(request,'Forgot-password.php')
#new password set-----------------------------
def Recover_password(request):
    return render(request,'Recover-password.php')

#Login by group----(unused)-----------------
from django.contrib.auth import authenticate, login
def User_Login(request):
    email = request.POST['email']
    password = request.POST['password']
    group = request.POST['group']
    user = authenticate(request, email=email, password=password, group=group)
    if group is not None:
        if email is not None:
            if user.is_authenticated:
                login(request, User_Login)
            # Redirect to a success page.
        
        else:
            # Return an 'invalid login' error message.
            redirect("Login.php")


#-----------show user data-----------------

@login_required(login_url='/login/')

def showuserdata(request):
    #user_nid    =   extendedProfile.objects.filter(user = request.user)
    from .models import User,extendedProfile
    #Profile_data =   extendedProfile.objects.all()
    
    
    users = extendedProfile.objects.filter(user=request.user)
    Profile_data =  users[len(users)-1].img
    print('picture url : '+ Profile_data.url)
    #show_image(request)
    #user_nid    =   extendedProfile.objects.filter(user=request.user)
    if request.user.is_staff:
        return render(request,"admin/index.php",{'Profile_data': Profile_data.url})
    elif request.user.groups.filter(name='Clients').exists():
        
        return render(request,'clients/index.php',{'Profile_data': Profile_data.url,'recently_added':recently_added})
    elif request.user.groups.filter(name='Land-Owners').exists():
        return render(request,'landowners/index.php',{'Profile_data': Profile_data.url})
    #{'data': user_nid},
           


#------------Landowners dashboard-----------
def landownersDashboard(request):
    #users = extendedProfile.objects.filter(user=request.user)
    Profile_data =  user_img(request)#users[len(users)-1].img 
    from Land_Data.views import Recently_added  
    recently_added=Recently_added(request)
    return render(request,'landowners/index.php',{'Profile_data': Profile_data.url,'recently_added':recently_added})

#------------Clients dashboard-----------
def clientsDashboard(request):
    Profile_data =  user_img(request)
    #Recently_added=Recently_added(request)
    from Land_Data.views import Recently_added
    recently_added=Recently_added(request)
    return render(request,'clients/index.php',{'Profile_data': Profile_data.url,'recently_added':recently_added})

#------------Doc-verifier dashboard-----------
def Doc_Verifier_Dashboard(request):
    Profile_data =  user_img(request)
    datas=Submitted_for_review(request)
    return render(request,'doc_verifier/index.php',{'Profile_data': Profile_data.url,'Submitted_for_review':datas,})

#------------land_verifier dashboard-----------
def land_verifier_Dashboard(request):
    Profile_data =  user_img(request)
    datas=Submitted_for_review(request)
    
    return render(request,'land_verifier/index.php',{'Profile_data': Profile_data.url,'Submitted_for_review':datas,})

#--------Admin Dashboard functions-------------------
@login_required(login_url='/login/')

#from .models import GroupAdminWithCount
#from django.contrib.auth.admin import GroupAdmin
#from django.contrib.auth.models import Group

def Users(request):
    from django.http import HttpResponseRedirect
    from django.urls import reverse


    return HttpResponseRedirect(reverse('admin:index'))

#----------count admin----------
def admin_counter(request):
   # from django.contrib.auth.models import User,auth,Group
    #from django.contrib.auth.admin import GroupAdmin

   # user_count={}

    admin = User.objects.filter(groups='1').count() #headline__contains='name'

    return admin
    #{'user_count': admin }
    #'admin/index.php',

#-------------landowner count------------------
def landowner_counter(request):
    landowner_count = User.objects.filter(groups='2').count() 
    return landowner_count

#-------------client count------------------
def client_counter(request):
    client_count = User.objects.filter(groups='3').count() 
    return client_count

#-------------Landowner project count------------------
def total_project_counter(request):
    from Land_Data.models import applied_data
    from Home.models import extendedProfile
    user_id=extendedProfile.objects.filter(user_id=request.user)
    total_projects = applied_data.objects.all().count()  
    return total_projects


#-------------land_verifiers count------------------
def land_verifier_counter(request):
    land_verifiers_count = User.objects.filter(groups='4').count()
    return land_verifiers_count
#-------------doc_verifier count------------------
def doc_verifier_counter(request):
    doc_verifier_count = User.objects.filter(groups='5').count() 
    return doc_verifier_count

#--------------Show User NID ----------------------------
'''
def user_nid(request):
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    return user_nid
'''
#---------------'landowner-form'------------------
def landownerForm(request):
    Profile_data=user_img(request)
    #user_nid=user_nid(request)
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    return render(request,'landowners/form.php',{'Profile_data': Profile_data.url,'user_nid':user_nid})
#---------------'landowner-all-projects'------------------
def landowner_projects(request):
    from Land_Data.views import landowner_projects 
    Profile_data=user_img(request)
    #user_nid=user_nid(request)
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    landowner_projects = landowner_projects(request)
    return render(request,'landowners/submitted_projects.php',{ 'Profile_data': Profile_data.url,
                                                                'user_nid':user_nid,
                                                                'landowner_projects':landowner_projects,
                                                                })
#---------------'landowner-contacts'------------------
def landowner_contacts(request):
    from Land_Data.views import landowner_projects 
    Profile_data=user_img(request)
    #user_nid=user_nid(request)
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    #landowner_projects = landowner_projects(request)
    return render(request,'landowners/contacts.php',{ 'Profile_data': Profile_data.url,
                                                    'user_nid':user_nid,
                                                   # 'landowner_projects':landowner_projects,
                                                    })

#clients_applied_projects(request)
#---------------'clients_applied_projects'------------------
def clients_applied_projects(request):
    from Land_Data.views import clients_applied_projects 
    Profile_data=user_img(request)
    #user_nid=user_nid(request)
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    clients_applied_projects= clients_applied_projects(request)
    return render(request,'clients/applied_projects.php',{ 'Profile_data': Profile_data.url,
                                                            'user_nid':user_nid,
                                                            'landowner_projects':landowner_projects,
                                                            'clients_applied_projects':clients_applied_projects,
                                                            })

#---------------'clients_removed_projects'------------------
def remove_application(request):
    from Land_Data.views import remove_application 
    Profile_data=user_img(request)
    #user_nid=user_nid(request)
    users = extendedProfile.objects.filter(user=request.user)
    user_nid =  users[len(users)-1].nid
    remove_application= remove_application(request)
    return render(request,'clients/applied_projects.php',{ 'Profile_data': Profile_data.url,
                                                            'user_nid':user_nid,
                                                            'landowner_projects':landowner_projects,
                                                            'clients_applied_projects': remove_application,
                                                            })
 

                                                            
#--------------Show User img ----------------------------
def user_img(request):
    users = extendedProfile.objects.filter(user=request.user)
    Profile_data =  users[len(users)-1].img
    return Profile_data



#---------------'gallery'------------------
def gallery(request):
    from Land_Data.views import goat_category,rice_category
    Profile_data=user_img(request)
    goat_category=goat_category(request)
    rice_category=rice_category(request)
    return render(request,'clients/gallery.php',{'Profile_data': Profile_data.url,
                                                 'goat_category':goat_category,
                                                 'rice_category':rice_category,       
                                                        })

#---------------------landowners_contacts-------------------------


def all_contacts(request):
    Profile_data=user_img(request)
    landowner_details=extendedProfile.objects.all()
    return render(request,'admin/contacts.php',{'Profile_data': Profile_data.url,
                                                'landowner_details':landowner_details
                                                })


#---------------------landowners_contacts-------------------------


def landowners_contacts(request):
    Profile_data=user_img(request)
    landowner_details=extendedProfile.objects.all()
    return render(request,'landowners/contacts.php',{'Profile_data': Profile_data.url,
                                                'landowner_details':landowner_details
                                                })


#---------------------Clients_contacts-------------------------
def clients_contacts(request):
    Profile_data=user_img(request)
    clients_details=extendedProfile.objects.all()
    return render(request,'clients/contacts.php',{'Profile_data': Profile_data.url,
                                                'clients_details':clients_details
                                                })

def Land_Data_submit(request):
    from Land_Data.views import Land_Data_submit
    action = Land_Data_submit(request)
    Profile_data=user_img(request)
    print('data inserted')
    data_inserted='Data inserted for Review'
    return render(request, 'landowners/form.php',{'Profile_data': Profile_data.url,'data_inserted':data_inserted})

def Projects(request):
        from Land_Data.views import Recently_added 
        Profile_data=user_img(request)
        
        LandData=Recently_added(request)
        
        return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})
      #  Land_Data.views.Projects(request)



#----------------------------------------------Future work page--------------------------
def Future_work(request):
     Profile_data=user_img(request)
     return render(request, 'future_work.php',{'Profile_data': Profile_data.url} )

#-------------------------Submitted_for_review---------------------------------
def Submitted_for_review(request):
        from Land_Data.views import Land_Data,Submitted_for_review
        Profile_data=user_img(request)
        
        from Land_Data.models import Land_Data,User
        
        context = {} 
  
    # add the dictionary during initialization 
        context["dataset"] = Land_Data.objects.all() 
        return context["dataset"]
        return render(request, 'landowners/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})
      #  Land_Data.views.Projects(request)
#
 
def Land_verifier_submit(request):
    from Land_Data.views import Land_verifier_submit
    Profile_data=user_img(request)
    verify_data=Land_verifier_submit(request)
    
    return render(request, 'land_verifier/verified_lands.php',{'Profile_data': Profile_data.url,'verify_data':verify_data})


def Doc_verifier_submit(request):
    from Land_Data.views import Doc_verifier_submit
    Profile_data=user_img(request)
    verify_data=Doc_verifier_submit(request)
    
    return render(request, 'doc_verifier/verified_docs.php',{'Profile_data': Profile_data.url,'verify_data':verify_data})

#----------------categories-----------
def rice_category(request):
    from Land_Data.views import rice_category
    Profile_data=user_img(request)
    LandData=rice_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def goat_category(request):
    from Land_Data.views import goat_category
    Profile_data=user_img(request)
    LandData=goat_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def cow_category(request):
    from Land_Data.views import cow_category
    Profile_data=user_img(request)
    LandData=cow_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def poultry_category(request):
    from Land_Data.views import poultry_category
    Profile_data=user_img(request)
    LandData=poultry_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def fisheries_category(request):
    from Land_Data.views import fisheries_category
    Profile_data=user_img(request)
    LandData=fisheries_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def vegetables_farming_category(request):
    from Land_Data.views import vegetables_farming_category
    Profile_data=user_img(request)
    LandData=vegetables_farming_category(request)
    return render(request, 'clients/projects.php',{'Profile_data': Profile_data.url,'LandData':LandData})

def Invoice_print(request):
    from Land_Data.views import Invoice_print
    Invoice_print(request)
    return render(request,'clients\invoice-print.html')



def clients_paid_projects(request):
    from .views import clients_paid_projects,user_img
    from Land_Data.models import payment_data
    clients_paid_projects = payment_data.objects.all()
    Profile_data=user_img(request)
    return render(request,'clients/paid_projects.php',{'clients_paid_projects':clients_paid_projects,
                                                       'Profile_data':Profile_data.url,
                                                        })
    



def Verified_lands(request):
    from Land_Data.models import Verification
    from .views import user_img
    Profile_data=user_img(request)
    Verified_lands=Verification.objects.all()

    return render(request,'land_verifier/verified_lands.php', {
                                                                'Profile_data':Profile_data.url,
                                                                'Verified_lands':Verified_lands,
                                                                 })
    
#---------------------------------------------------------


def Verified_docs(request):
    from Land_Data.models import Verification
    from .views import user_img
    Profile_data=user_img(request)
    Verified_docs=Verification.objects.all()

    return render(request,'doc_verifier/verified_docs.php', {
                                                                'Profile_data':Profile_data.url,
                                                                'Verified_docs':Verified_docs,
                                                                 })

#--------------------Agreement complete-----------

def agreement_complete(request):
    from Land_Data.models import payment_data
    Id=request.POST.get('id')
    payment_data.objects.filter(pk=Id).update(agreement_status='True')
    
    return render(request,'clients/index.php',)

#------------------Payment page-----------------
def payment(request):
    return render(request,'clients/payment.php')

#------------------map_view----------------
def map_view(request):
    map_latitude=request.POST.get('map_latitude') 
    map_longitude=request.POST.get('map_longitude')
    return render(request,'clients/map_view.php',{'map_latitude':map_latitude,
                                                  'map_longitude':map_longitude, 
                                                  })