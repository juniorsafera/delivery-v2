import 'package:delivery_app_v2/core/others/color.dart';
import 'package:delivery_app_v2/features/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(left: 20),
                  child: DefaultTabController(
                    length: controller.itemCategory.length,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: MyColors.primary,
                                width: 2,
                              )),
                              child: const Center(
                                child: Text(
                                  " SUA LOGO AQUI",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: MyColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_sharp,
                                ))
                          ],
                        ),
                        Container(
                          width: Get.width,
                          padding: const EdgeInsets.all(15),
                          child: TabBar(
                              labelColor: MyColors.primary,
                              unselectedLabelColor: Colors.black,
                              indicatorColor: MyColors.primary,
                              isScrollable: true,
                              tabs: controller.listGenerateTabs()),
                        ),
                        SizedBox(
                          width: Get.width,
                          height: Get.height * 0.9,
                          child: SizedBox(
                            child: TabBarView(
                              children: controller.listGenerateViews(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
