
import 'package:delivery_app_v2/features/item_detail/item_details_controller.dart';
import 'package:get/get.dart';

class ItemDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemDetailsController>(() => ItemDetailsController());
  }
}
