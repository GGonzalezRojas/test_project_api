# Generated by Django 3.0.5 on 2020-04-17 05:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('people_manager', '0002_auto_20200417_0133'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='rut',
            field=models.CharField(max_length=10, unique=True),
        ),
    ]