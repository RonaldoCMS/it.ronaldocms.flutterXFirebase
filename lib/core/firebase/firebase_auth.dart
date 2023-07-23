import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/core/utils/navigator_utils.dart';

class MyFirebaseAuth {

  static authRouting() async {
    await NavigatorUtils.pushNamedAndRemoveUntil(route: await screenRouteFunction());
  }

  static Future<String> screenRouteFunction() async {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await user.reload();
        return Routes.home;
      } catch (error) {
        return Routes.login;
      }
    } else {
      return Routes.login;
    }
  }

  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    await authRouting();
  }
}
