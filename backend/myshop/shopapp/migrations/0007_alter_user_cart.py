# Generated by Django 4.0.1 on 2022-01-15 16:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shopapp', '0006_order_phone'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='cart',
            field=models.ManyToManyField(blank=True, null=True, related_name='product_ratings', to='shopapp.Product'),
        ),
    ]
