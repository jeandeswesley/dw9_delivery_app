import 'package:dw9_delivery_app/app/pages/order/widget/payment_types_field.dart';

import '../../models/payment_type_model.dart';

abstract class OrederRepository {
  Future<List<PaymentTypeModel>> getAllPaymentsTypes();
}
