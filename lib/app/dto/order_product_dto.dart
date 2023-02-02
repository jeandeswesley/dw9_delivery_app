// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw9_delivery_app/app/models/product_model.dart';
import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_page.dart';

class OrderProductDto {
  final ProductModel product;
  final int amount;

  OrderProductDto({
    required this.product,
    required this.amount,
  });

  double get totalPrice => amount * product.price;
}
