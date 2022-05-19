import 'package:delivery_app_v2/core/global/styles/custom.dart';
import 'package:delivery_app_v2/core/models/item_model.dart';
import 'package:get/get.dart';

import '../../core/routes/routes.dart';

class ItemDetailsController extends GetxController {
  Custom custom = Custom();
  ItemModel? arg;

   

  @override
  void onInit() {
    super.onInit();
    verifyAgr();
  }

  void verifyAgr() async {
    if (Get.arguments != null) {
      arg = Get.arguments;
    } else {
      await Future.delayed(
          const Duration(seconds: 2), () => Get.offNamed(Routes.splahScreen));
    }
  }
}
