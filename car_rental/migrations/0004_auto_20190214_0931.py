# Generated by Django 2.1.5 on 2019-02-14 09:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('car_rental', '0003_auto_20190214_0931'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rides',
            name='ride_time',
            field=models.TimeField(default=None),
        ),
    ]