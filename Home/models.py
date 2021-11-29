from django.db import models

# Create your models here.
#from django.contrib.auth.models import User
#class user_data(models.Model):
#    nid =   models.IntegerField(unique=True)
#    phone_num   =   models.CharField(max_length=15)
#    user    =   models.OneToOneField(User,on_delete= models.CASCADE)

#---------------Extending database Model-------------
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator
#from . views import Register.nid
#from . tests  import path_and_rename
class   extendedProfile(models.Model):
    nid         =   models.IntegerField( default=None,primary_key=True,unique=True)
    full_name   =   models.CharField(max_length=100,default=None)   
    phone_num   =   models.CharField(max_length=15, default=None)
    #img         =   models.path_and_rename('Profile_pic/')
    img         =   models.ImageField(null=True,blank=True,upload_to='Profile_pic/')
    user        =   models.ForeignKey(User, on_delete = models.CASCADE )
    #applied_for =   models.CharField(max_length=255,default=None)
    #def __str__(self):
        
     #   return self.full_name , self.nid
    #def __str__(self):
      #  return self.nid

#---------Count Group users---------
from django.contrib.auth.admin import GroupAdmin
from django.contrib.auth.models import Group
from django.shortcuts import render

class GroupAdminWithCount(GroupAdmin):
    def user_count(self, obj):
        
        #count_data['count_data']= obj.user_set.count(group)
        return obj.user_set.count() #,{'user_count':user_count}
        #return count_data

    
    list_display = GroupAdmin.list_display + ('user_count',)
    
    def counter(self,obj):
        
        user_count=obj.user_set.count()
        return render(request,'admin/index.php',{'user_count':GroupAdmin.list_display})
   # list_display = GroupAdmin.list_display + ('user_count',)


