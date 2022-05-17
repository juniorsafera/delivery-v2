import 'package:delivery_app_v2/features/cart/cart_controller.dart';
import 'package:get/get.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
