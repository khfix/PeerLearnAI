# Generated by Django 4.0.5 on 2022-06-11 15:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0003_alter_profile_avatar'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profile',
            name='phone_number',
        ),
    ]
