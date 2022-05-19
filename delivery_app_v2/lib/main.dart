import 'package:delivery_app_v2/core/routes/pages.dart';
import 'package:delivery_app_v2/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splahScreen,
    getPages: AppPages.pages,
  ));
}
