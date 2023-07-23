import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:textfire/core/routing/routes.dart';

class NavigatorUtils {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();



  static Future pushNamed({required String route}) => Navigator.of(navigatorKey.currentContext!).pushNamed(route);
  static Future pushNamedAndRemoveUntil({required String route}) => Navigator.of(navigatorKey.currentContext!).pushNamedAndRemoveUntil(route, (route) => false,);

  static alreadyNavigated({required String attualRoute}) {
    // if(navigatorKey.currentWidget is Navigator) {
    //   var widget = navigatorKey.currentWidget as Navigator;
    //   widget.
    // }
    print(navigatorKey);
  }

}