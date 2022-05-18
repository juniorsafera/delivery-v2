import 'package:delivery_app_v2/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const HomePage(),
      duration: 2000,
      text: "IdeaSofist",
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30,
      ),
    );
  }
}
