# Generated by Django 4.0.1 on 2022-01-19 16:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shopapp', '0010_alter_product_product_price'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='product_price',
            field=models.CharField(max_length=250, unique=True),
        ),
    ]