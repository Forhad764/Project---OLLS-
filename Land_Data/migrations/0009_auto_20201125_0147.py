# Generated by Django 3.1.2 on 2020-11-24 19:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Land_Data', '0008_auto_20201125_0132'),
    ]

    operations = [
        migrations.AlterField(
            model_name='payment_data',
            name='user',
            field=models.OneToOneField(default=None, on_delete=django.db.models.deletion.CASCADE, to='Land_Data.applied_data'),
        ),
    ]
