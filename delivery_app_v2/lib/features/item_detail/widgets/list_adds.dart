import 'package:delivery_app_v2/features/item_detail/item_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListAdds extends StatelessWidget {
  const ListAdds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemDetailsController>(
        init: ItemDetailsController(),
        builder: (controller) {
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (contex, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text("Calabresa"),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text("R\$ 1,50"),
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
