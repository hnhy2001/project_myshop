from django.shortcuts import render
# Create your views here.
from django.http import HttpResponse, JsonResponse
from rest_framework import viewsets, permissions, status, generics
from rest_framework.decorators import action
from rest_framework.response import Response
from .models import Product, User, Notication, Order
from .serializer import ProductSerializer, UserSerializer, NoticationSerializer, OrderSerializer

class NoticationView(viewsets.ModelViewSet):
    queryset = Notication.objects.all()
    serializer_class = NoticationSerializer

    @action(methods=['post'],detail=False)
    def hiden_noti(self, request):
        order = Order.objects.get(pk = request.data["id"])
        noti = Notication()
        user = User.objects.get(pk = request.data["user_id"])
        noti.content = "Đơn hàng của bạn đã được chấp nhận"
        noti.user = user
        noti.save()
        order.active = False
        order.save()

        return Response(NoticationSerializer(noti).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def delete_noti(self, request):
        order = Order.objects.get(pk = request.data["id"])
        noti = Notication()
        user = User.objects.get(pk = request.data["user_id"])
        noti.content = "Đơn hàng của bạn đã bị từ chối"
        noti.user = user
        noti.save()
        order.active = False
        order.save()

        return Response(NoticationSerializer(noti).data,
                        status=status.HTTP_200_OK)







class ProductView(viewsets.ModelViewSet):
    queryset = Product.objects.filter(active = True)
    serializer_class = ProductSerializer

    @action(methods=['get'],detail=False)
    def get_all(self, request):
        products = Product. \
            objects. \
            filter(active = True)
        return Response(ProductSerializer(products, many=True).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def search(self, request):
        products = Product. \
            objects. \
            filter(product_name__icontains=request.data["content"])
        return Response(ProductSerializer(products, many=True).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def products(self, request):
        list = request.data["products"]
        product = Product.\
            objects.\
            filter(id__in = list)
        return Response(ProductSerializer(product, many=True).data,
                        status=status.HTTP_200_OK)

class UserView(viewsets.ModelViewSet):
    queryset = User.objects.filter(is_active = True)
    serializer_class = UserSerializer
    @action(methods=['post'],detail=False)
    def login(self, request):
        user = User.\
            objects.\
            filter(username = request.data["username"], password = request.data["password"])
        return Response(UserSerializer(user, many=True).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def logup(self, request):
        user = User()
        user.username = request.data["username"]
        user.password = request.data["password"]
        user.phone = request.data["phone"]
        user.role = "user"
        user.save()
        return Response(UserSerializer(user).data,
                        status=status.HTTP_200_OK)


    @action(methods=['post'],detail=False)
    def cart(self, request):
        id = request.data["user_id"]
        product = Product.objects.get(id = request.data["product_id"])
        user = User.objects.get(id = int(id), is_active = True)
        user.cart.add(product)
        user.save()
        return Response(UserSerializer(user).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def get_cart(self, request):
        id = request.data["id"]
        user = User.objects.get(id = int(id), is_active = True)
        return Response(UserSerializer(user).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def hiden_cart(self, request):
        id = request.data['id']
        user = User.objects.get(id = id, is_active = True)
        user.cart.clear()
        user.save()
        return Response(UserSerializer(user).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def hiden_detail(self, request):
        id = request.data['id']
        user = User.objects.get(id = id, is_active = True)
        product = Product.objects.get(pk = request.data["product_id"])
        user.cart.remove(product)
        user.save()
        return Response(UserSerializer(user).data,
                        status=status.HTTP_200_OK)






class OrderView(viewsets.ModelViewSet):
    serializer_class = OrderSerializer
    queryset = Order.objects.filter(active = True)

    @action(methods=['post'],detail=False)
    def hide_order(self, request):
        id = request.data["id"]
        order = Order.objects.get(pk = id)
        order.active = False
        order.save()
        return Response(OrderSerializer(order).data,
                        status=status.HTTP_200_OK)

    @action(methods=['get'],detail=False)
    def hide_order(self, request):
        order = Order.objects.filter(active = True)
        return Response(OrderSerializer(order).data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'],detail=False)
    def add_order(self, request):
        order = Order()
        user = User.objects.get(pk = request.data["user_id"])
        order.order_price = request.data["price"]
        order.user = user
        order.save()
        return Response(OrderSerializer(order).data,
                        status=status.HTTP_200_OK)


