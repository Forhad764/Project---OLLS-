# Generated by Django 3.1.2 on 2020-11-22 22:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Land_Data', '0002_remove_land_data_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='land_data',
            name='id',
            field=models.IntegerField(auto_created=True, default=None),
        ),
    ]
