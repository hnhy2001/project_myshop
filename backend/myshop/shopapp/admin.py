from django.contrib import admin
from .models import Product, User
# Register your models here.
class ProductAdmin(admin.ModelAdmin):
    list_display = ['id', 'product_name', 'avatar', 'created_date', 'product_price', 'active']

class UserAdmin(admin.ModelAdmin):
    list_display = ["id", "username", "password", "role"]

admin.site.register(Product, ProductAdmin)
admin.site.register(User, UserAdmin)