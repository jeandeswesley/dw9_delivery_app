import 'package:dw9_delivery_app/app/pages/order/order_page.dart';
import 'package:dw9_delivery_app/app/pages/order/widget/order_controller.dart';
import 'package:dw9_delivery_app/app/repositories/order/oreder_repository.dart';
import 'package:dw9_delivery_app/app/repositories/order/oreder_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderRoute {
  OrderRoute._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<OrederRepository>(
            create: (context) => OrederRepositoryImpl(dio: context.read()),
          ),
          Provider(
            create: (context) => OrderController(context.read()),
          )
        ],
        child: const OrderPage(),
      );
}
