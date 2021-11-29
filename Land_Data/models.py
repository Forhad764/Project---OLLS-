
from django.db import models

# Create your models here.

#---------------Creating  database Model for posting land data-------------
from django.contrib.auth.models import User
from Home.models import extendedProfile
from django.core.validators import MaxValueValidator
from Home.models import extendedProfile
from django.utils import timezone
#class for Category----------------
#new
from multiselectfield import MultiSelectField


MY_CHOICES = (('Cow_Farming', 'Cow_Farming'),
              ('Goat_Farming', 'Goat_Farming'),
              ('Fisheries', 'Fisheries'),
              ('Poultry', 'Poultry'),
              ('Rice_Farming', 'Rice_Farming'),
              ('Vegetables_Farming','Vegetables_Farming'))
'''
MY_CHOICES2 = ((1, 'Item title 2.1'),
               (2, 'Item title 2.2'),
               (3, 'Item title 2.3'),
               (4, 'Item title 2.4'),
               (5, 'Item title 2.5'))
         '''      
#End
#request.user(category = Land_Data.category_id)
class Category(models.Model):
    #
    id   = models.IntegerField(auto_created=True,primary_key=True,default=None)
    #name = models.CharField(max_length=250,unique=True,primary_key=True)#,
    #slug = models.SlugField(max_length=250, unique=True)
#new
    name = MultiSelectField(choices=MY_CHOICES,default=None)#choices=MY_CHOICES,
    #slug = MultiSelectField(max_length=250,
     #                       default=None,
     #                       max_choices=3,
      #                      )#choices=MY_CHOICES2,max_length=3
#End
    class Meta:
        ordering =('name', )
        verbose_name = 'category'
        verbose_name_plural = 'categories'

    def __str__(self):
        return self.name

#class for Post land data-------------
'''
Soil_CHOICES = (('Floodplain_soil', 'Floodplain_soil'),
              ('Sandy_soil', 'Sandy_soil'),
              ('Loam_Soil', 'Loam_Soil'),
              ('Clayey_Soil', 'Clayey_soil'))
'''
class Land_Data(models.Model):
    id                      =   models.IntegerField(auto_created=True,default=None,unique=False,blank=False)
    #id                      = models.ForeignKey(User,default=User.id,on_delete=models.CASCADE)
   #nid                      =   models.ForeignKey(extendedProfile,default=None,related_name="nid", on_delete=models.CASCADE )
    title                   =   models.CharField(max_length=250,default=None,null=True)
    slug                    =   models.SlugField(max_length=250,default=None,null=True)
    published               =   models.DateTimeField(default= timezone.now )
    created                 =   models.DateTimeField(auto_now_add=True)
    updated                 =   models.DateTimeField(auto_now=True)
    size                    =   models.CharField( max_length=250,default=None,null=True,blank=False)
    #category                =   models.ForeignKey(Category,default=None, on_delete=models.CASCADE ) 
    category_id             =   models.CharField(max_length=250,default=None,null=True,blank=False)  
    location                =   models.CharField(max_length=15, default=None,null=True)
    map_latitude            =   models.CharField(max_length=250,default=None,null=True,blank=True)
    map_longitude           =   models.CharField(max_length=250,default=None,null=True,blank=True)
    #nid                     =   models.OneToOneField(extendedProfile,default=None,on_delete = models.CASCADE,primary_key=True)
    #nid                     =   models.IntegerField( default=None,unique=True,primary_key=True)
    #nid                     =   models.IntegerField(extendedProfile.nid,default=None)
    #img                     =   models.path_and_rename('Profile_pic/')
    land_img                =   models.ImageField(null=True,blank=True,upload_to='Land_pic/')
    dolil_img               =   models.ImageField(null=True,blank=True,upload_to='Land_dolil_pic/')
    khotian_img             =   models.ImageField(null=True,blank=True,upload_to='Land_khotian_pic/')
    allow_status            =   models.BooleanField(null=True,blank=True,default=None)
    area                    =   models.IntegerField(null=True,blank=True)
    monthly_charge          =   models.IntegerField( null=True,blank=True)
    #extendedProfile         =   models.OneToOneField( extendedProfile , on_delete=models.CASCADE, primary_key=True )
    project_id              =   models.IntegerField(primary_key=True,auto_created=True)
    soil_type = models.CharField(max_length=250,default=None,null=True,blank=False)
    detail_addr             =   models.CharField(max_length=250, default=None,null=True,blank=True)
    #payment_status          =   models.BooleanField( default=None,blank=True,null=True)
    month                   =   models.IntegerField( default=None,null=True,blank=False)
    year                    =   models.IntegerField( default=None,null=True,blank=True)


    class Meta:
        verbose_name="Land Data"
        verbose_name_plural="Land Data's"
    def __str__(self):
        
        return self.title




#-----------Class for user application----------------------------------------------

from Home.models import extendedProfile,User

class applied_data(models.Model):
    #id           =   models.IntegerField(auto_created=True,primary_key=True)
    #user_id         =   models.ForeignKey( User,default=None,blank=True,null=True, on_delete = models.CASCADE )
    
    #----previous---
    user               =   models.CharField(max_length=250,default=None,blank=True,null=True)
    
    #owner_id          =   models.CharField(max_length=250,default=None,blank=True,null=True)
    
    #category          =   models.ForeignKey( Category, default=None, on_delete = models.CASCADE )
    
    monthly_charge     =   models.CharField(max_length=250,default=None,blank=True,null=True)
    #project_id        =   models.OneToOneField( Land_Data ,default=None, on_delete=models.CASCADE)
    project_id         =   models.ForeignKey( Land_Data ,default=None, on_delete=models.CASCADE)
    #title              =   models.ForeignKey( Land_Data ,default=None, on_delete=models.CASCADE)
    project_title      =   models.CharField( max_length=250,default=None,blank=True,null=True)
    #landowner_id      =    models.OneToOneField()

    #def __str__(self):
     #   return str(self.id)

    class Meta:
        #ordering =('user', )
        verbose_name = "Applied"
        verbose_name_plural = "Applied"

    #def __str__(self):
       # return self.user, self.project_id



#-------------------------Verification class-----------------------------------------------
# 
# 
#     
class Verification(models.Model):
    #user                    =   models.CharField(max_length=250,default=None,blank=True,null=True)
    project_id              =   models.ForeignKey( Land_Data ,default=None, on_delete=models.CASCADE)
    loc_ver                 =   models.CharField(max_length=15, default=None,null=True,blank=True)
    status_ver              =   models.CharField(max_length=15, default=None,null=True,blank=True)
    land_size_ver           =   models.CharField(max_length=15, default=None,null=True,blank=True)
    land_ver_com             =   models.CharField(max_length=250, default=None,null=True,blank=True)
    land_ver_usr             =   models.CharField(max_length=250, default=None,null=True,blank=True)

    doc_ver                 =   models.CharField(max_length=15, default=None,null=True,blank=True)
    doc_ver_com             =   models.CharField(max_length=250, default=None,null=True,blank=True)
    doc_ver_usr             =   models.CharField(max_length=250, default=None,null=True,blank=True)
    


    class Meta:
        #ordering =('user', )
        verbose_name = "Verification"
        verbose_name_plural = "Verification's"

    def __str__(self):
        #return self.user 
        return self.project_id


#------------------------------------------------------------------------------------------------------

class payment_data(models.Model):
    user    = models.ManyToManyField(User)
    #user         =   models.CharField(max_length=250,default=None,blank=True,null=True)
    #project_id   =   models.CharField(max_length=250,default=None,blank=True,null=True)
    project_id  =   models.OneToOneField(Land_Data,default=None,on_delete=models.CASCADE)
    monthly_charge  =  models.CharField(max_length=250,default=None,blank=True,null=True)
    payment_status  = models.BooleanField(default=False,blank=True,null=True)
    agreement_status    = models.BooleanField(default=False,blank=True,null=True)
    #class Meta:
     #   ordering =('applied', )
     #   verbose_name = 'applied'
     #   verbose_name_plural = 'categories'

    #def __str__(self):
       # return self.project_id