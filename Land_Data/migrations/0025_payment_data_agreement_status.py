# Generated by Django 3.1.2 on 2020-11-29 11:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Land_Data', '0024_auto_20201129_0036'),
    ]

    operations = [
        migrations.AddField(
            model_name='payment_data',
            name='agreement_status',
            field=models.BooleanField(blank=True, default=False, null=True),
        ),
    ]
