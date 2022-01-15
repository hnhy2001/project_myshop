from rest_framework.serializers import ModelSerializer
from .models import User, Product, Notication, Order

class ProductSerializer(ModelSerializer):
    class Meta:
        model = Product
        fields = ['id', 'product_name', 'avatar', 'product_price', 'content']

class UserSerializer(ModelSerializer):
    products = ProductSerializer(source='cart', many=True)
    class Meta:
        model = User
        fields = ['id', 'username', 'password', 'phone', 'products', 'role']

    def create(self, validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.role = "user"
        user.save()
        return user

class NoticationSerializer(ModelSerializer):
    class Meta:
        model = Notication
        fields = ["user", "content"]

class OrderSerializer(ModelSerializer):
    users = UserSerializer(source="user")
    class Meta:
        model = Order
        fields = ["id","order_price", "users"]

