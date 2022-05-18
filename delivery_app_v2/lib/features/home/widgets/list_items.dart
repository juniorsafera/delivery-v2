import 'package:delivery_app_v2/core/models/item_model.dart';
import 'package:delivery_app_v2/core/others/color.dart';
import 'package:delivery_app_v2/core/routes/routes.dart';
import 'package:delivery_app_v2/core/widgets/price.dart';
import 'package:delivery_app_v2/features/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItems extends StatelessWidget {
  final List<ItemModel> items;
  final String category;
  const ListItems({
    Key? key,
    required this.items,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.listToCategory(category).length,
            itemBuilder: (context, index) {
              final _item = controller.items[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(Routes.itemDetailsPage, arguments: _item),
                      child: ListTile(
                        leading: SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network(
                            _item.imageUrl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          _item.title,
                          style: const TextStyle(
                            color: MyColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          _item.description.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        trailing: Price(
                            price:
                                controller.convertFormatedPrice(_item.price)),
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          );
        });
  }
}
