import 'package:delivery_app_v2/core/models/item_model.dart';
import 'package:get/get.dart';

import '../../core/routes/routes.dart';

class ItemDetailsController extends GetxController {
  RxList<ItemModel> arg = [
    const ItemModel(
        id: '0',
        title: 'title',
        description: 'description',
        categories: [],
        available: false,
        price: 0)
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    if (Get.arguments != null) {
      arg.value = [Get.arguments];
    } else {
      Get.offNamed(Routes.homePage);
    }
  }
}
