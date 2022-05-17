
import 'package:delivery_app_v2/core/routes/routes.dart';
import 'package:delivery_app_v2/features/cart/cart_binding.dart';
import 'package:delivery_app_v2/features/cart/cart_page.dart';
import 'package:delivery_app_v2/features/home/home_binding.dart';
import 'package:delivery_app_v2/features/home/home_page.dart';
import 'package:delivery_app_v2/features/splash_page/splash_page.dart';
import 'package:get/get.dart';

class AppPages{
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splashPage, 
      page:  ()=> const SplashPage(),
      ),
     GetPage(
      name: Routes.homePage, 
      page:  ()=> const HomePage(),
      binding: HomeBinding(),
      ),
      GetPage(
      name: Routes.cartPage, 
      page:  ()=> const CartPage(),
      binding: CartBinding(),
      ),
  ];
}