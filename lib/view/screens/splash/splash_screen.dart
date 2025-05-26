import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:s_rocks_music_homepage/core/assets/app_images.dart';
import 'package:s_rocks_music_homepage/view/screens/home/home_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // backgroundColor:
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(169, 1, 64, 1), Color.fromRGBO(85, 1, 32, 1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: AnimatedSplashScreen(
        backgroundColor: Colors.transparent,
        splash: Center(
          child: Image.asset(AppImages.appLogo, width: 200, height: 200),
        ),
        duration: 800,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: const HomeScreen(),
      ),
    );
  }
}
