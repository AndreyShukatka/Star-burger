# Generated by Django 3.2.15 on 2023-01-24 16:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addressapp', '0002_alter_addresscoordinate_address'),
    ]

    operations = [
        migrations.AlterField(
            model_name='addresscoordinate',
            name='lat',
            field=models.FloatField(blank=True, verbose_name='Широта'),
        ),
        migrations.AlterField(
            model_name='addresscoordinate',
            name='lon',
            field=models.FloatField(blank=True, verbose_name='Долгота'),
        ),
    ]
