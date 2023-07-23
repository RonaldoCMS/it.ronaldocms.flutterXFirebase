import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:textfire/core/firebase/firebase_auth.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenRouteFunction(
      splash: const CircularProgressIndicator.adaptive(),
     screenRouteFunction: () async {
       return await MyFirebaseAuth.screenRouteFunction();
     },
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
