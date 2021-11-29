# Generated by Django 3.1.2 on 2020-11-28 11:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Land_Data', '0020_applied_data_project_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='land_data',
            name='month',
            field=models.IntegerField(default=None, null=True),
        ),
        migrations.AddField(
            model_name='land_data',
            name='year',
            field=models.IntegerField(blank=True, default=None, null=True),
        ),
    ]
