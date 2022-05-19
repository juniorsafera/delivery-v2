import 'package:delivery_app_v2/features/item_detail/item_details_controller.dart';
import 'package:delivery_app_v2/features/item_detail/widgets/list_adds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemDetailsController>(
        init: ItemDetailsController(),
        builder: (controller) {
          return controller.arg == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Scaffold(
                  body: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: Get.width,
                            child: Image.network(
                              controller.arg!.imageUrl!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: Get.width,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: Get.back,
                                    icon: const Icon(
                                      Icons.arrow_circle_left_outlined,
                                      color: Colors.white,
                                      size: 50,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.arg!.title,
                                style: controller.custom.customTitle(),
                              ),
                              Text(
                                "R\$ ${controller.custom.convertFormatedPrice(controller.arg!.price)}",
                                style: controller.custom.customTitle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text(
                              "Igredientes:",
                              style: controller.custom.customSubTitle(),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          width: Get.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(controller.arg!.description),
                          ),
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Container(
                          color: Colors.grey,
                          width: Get.width,
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Adicionais",
                                    style: controller.custom.customSubTitle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: Get.width,
                                height: 50,
                                child: const SingleChildScrollView(
                                  child: SizedBox(
                                      height: 45, child:  ListAdds()),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.4,
                        child: const Divider(
                          thickness: 0.1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
        });
  }
}
