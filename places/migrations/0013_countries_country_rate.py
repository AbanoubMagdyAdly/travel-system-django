# Generated by Django 2.1.7 on 2019-02-20 19:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('places', '0012_auto_20190219_1549'),
    ]

    operations = [
        migrations.AddField(
            model_name='countries',
            name='country_rate',
            field=models.IntegerField(default=0),
        ),
    ]
