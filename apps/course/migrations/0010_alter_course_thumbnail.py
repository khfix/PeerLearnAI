# Generated by Django 4.0.5 on 2022-06-08 18:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0009_alter_course_thumbnail'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='thumbnail',
            field=models.ImageField(upload_to='media'),
        ),
    ]
