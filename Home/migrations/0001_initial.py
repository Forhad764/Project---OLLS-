# Generated by Django 3.1.2 on 2020-11-19 11:44

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='extendedProfile',
            fields=[
                ('nid', models.IntegerField(default=None, primary_key=True, serialize=False, unique=True)),
                ('full_name', models.CharField(default=None, max_length=100)),
                ('phone_num', models.CharField(default=None, max_length=15)),
                ('img', models.ImageField(blank=True, null=True, upload_to='Profile_pic/')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]