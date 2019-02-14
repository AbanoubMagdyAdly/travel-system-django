# Generated by Django 2.1.5 on 2019-02-14 09:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authentication', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Hotels',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Reservations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('no_of_persons', models.IntegerField()),
                ('hotel', models.ForeignKey(on_delete=None, to='authentication.Hotels')),
            ],
        ),
        migrations.CreateModel(
            name='Rides',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.RemoveField(
            model_name='users',
            name='email',
        ),
        migrations.RemoveField(
            model_name='users',
            name='password',
        ),
        migrations.AddField(
            model_name='users',
            name='user_email',
            field=models.CharField(default=None, max_length=50),
        ),
        migrations.AddField(
            model_name='users',
            name='user_password',
            field=models.CharField(default=None, max_length=64),
        ),
        migrations.AlterField(
            model_name='users',
            name='user_name',
            field=models.CharField(max_length=100),
        ),
        migrations.AddField(
            model_name='rides',
            name='user',
            field=models.ForeignKey(on_delete=None, to='authentication.Users'),
        ),
        migrations.AddField(
            model_name='reservations',
            name='user',
            field=models.ForeignKey(on_delete=None, to='authentication.Users'),
        ),
    ]
