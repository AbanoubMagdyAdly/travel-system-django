# Generated by Django 2.1.7 on 2019-02-19 14:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0007_auto_20190219_1136'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cities',
            old_name='country_id',
            new_name='country',
        ),
        migrations.RenameField(
            model_name='locations',
            old_name='city_id',
            new_name='city',
        ),
    ]
