import 'package:delivery_app_v2/core/others/color.dart';
import 'package:delivery_app_v2/features/item_detail/item_details.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemDetailsController>(
        init: ItemDetailsController(),
        builder: (controller) {
          return Scaffold(
            // appBar: AppBar(
            //   backgroundColor: Colors.white,
            //   foregroundColor: MyColors.primary,
            // ),
            body: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Image.network(
                        controller.arg.imageUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        width: Get.width,
                        height: 60,
                        color: Colors.black26,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
