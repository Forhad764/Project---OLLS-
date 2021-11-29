from django.contrib import admin
from django.contrib.auth.models import Group
from django.contrib.auth.admin import GroupAdmin
from .models import extendedProfile ,GroupAdminWithCount
from Land_Data.models import Land_Data ,Category,applied_data,Verification,payment_data
# Register your models here.






admin.site.register(extendedProfile)
admin.site.register(Land_Data)
admin.site.register(Category)
admin.site.register(applied_data)
admin.site.register(Verification)
admin.site.register(payment_data)
#---counting group users------------------
admin.site.unregister(Group)
admin.site.register(Group, GroupAdminWithCount)


