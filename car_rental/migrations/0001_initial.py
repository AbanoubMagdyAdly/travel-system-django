# Generated by Django 2.1.5 on 2019-02-14 09:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('authentication', '0003_auto_20190214_0923'),
        ('places', '0002_auto_20190213_1420'),
    ]

    operations = [
        migrations.CreateModel(
            name='Rides',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('from_location', models.ForeignKey(on_delete=None, to='places.Locations')),
                ('user_id', models.ForeignKey(on_delete=None, to='authentication.Users')),
            ],
        ),
    ]
