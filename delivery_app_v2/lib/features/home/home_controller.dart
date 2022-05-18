import 'package:delivery_app_v2/core/data/category_data.dart';
import 'package:delivery_app_v2/core/data/item_data.dart';
import 'package:delivery_app_v2/core/models/category_model.dart';
import 'package:delivery_app_v2/core/models/item_model.dart';
import 'package:delivery_app_v2/features/home/widgets/list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<CategoryModel> itemCategory = categoryData.obs;
  final RxList<ItemModel> items = itemData.obs;

  List<ItemModel> listToCategory(String category) {
    
    return items.where((e) => e.categories.contains(category)).toList();
  }

  List<Tab> listGenerateTabs() {
    final _tabs = List.generate(
      itemCategory.length,
      (index) {
        return Tab(
          text: itemCategory[index].title,
        );
      },
    );
    return _tabs;
  }

  List<Widget> listGenerateViews() {
    final _views = List.generate(
      itemCategory.length,
      (index) {
        return ListItems(items: items, category: itemCategory[index].id);
      },
    );
    return _views;
  }

  String convertFormatedPrice(int value) {
    double vr = value / 100;
    MoneyMaskedTextController res = MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
      initialValue: vr,
    );
    return res.value.text;
  }
}
