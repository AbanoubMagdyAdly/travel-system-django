# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-16 17:50
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0002_auto_20190213_1420'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cities',
            old_name='country_id',
            new_name='country',
        ),
        migrations.RenameField(
            model_name='hotel',
            old_name='city_id',
            new_name='city',
        ),
        migrations.RenameField(
            model_name='locations',
            old_name='city_id',
            new_name='city',
        ),
    ]
