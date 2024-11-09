import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallet_app/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const String routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // animationDuration: Duration(seconds: 4),
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
              'assets/lottie/loading.json',
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      splashIconSize: 400,
      nextScreen: LayoutView(),
    );
  }
}
