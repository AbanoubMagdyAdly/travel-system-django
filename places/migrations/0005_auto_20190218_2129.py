# Generated by Django 2.1.7 on 2019-02-18 21:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0004_auto_20190217_1719'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cities',
            name='city_description',
        ),
        migrations.RemoveField(
            model_name='countries',
            name='country_description',
        ),
    ]