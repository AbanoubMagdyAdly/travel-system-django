# Generated by Django 2.1.7 on 2019-02-19 11:13

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0005_auto_20190218_2129'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cities',
            old_name='country',
            new_name='country_id',
        ),
    ]