# Generated by Django 3.1.2 on 2020-11-28 12:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Land_Data', '0021_auto_20201128_1718'),
    ]

    operations = [
        migrations.AlterField(
            model_name='land_data',
            name='month',
            field=models.IntegerField(default=None, max_length=2, null=True),
        ),
    ]
