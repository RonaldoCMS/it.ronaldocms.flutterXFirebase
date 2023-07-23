import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/ui/auth/auth_page.dart';
import 'package:textfire/ui/auth/login/login_page.dart';
import 'package:textfire/ui/auth/register/register_page.dart';
import 'package:textfire/ui/home/home_page.dart';
import 'package:textfire/ui/policy/terms_page.dart';
import 'package:textfire/ui/profile/profile_page.dart';
import 'package:textfire/ui/profile/widgets/photo/cubit/profile_photo_cubit.dart';
import 'package:textfire/ui/splash/splash_page.dart';

Map<String, WidgetBuilder> get router {
  return {
    Routes.xDefault: (context) => const SplashPage(),
    Routes.auth: (context) => const AuthPage(),
    Routes.login: (context) => const LoginPage(),
    Routes.register: (context) => const RegisterPage(),
    Routes.forget: (context) => const LoginPage(),
    Routes.termsAndConditions: (context) => const TermsPage(),
    Routes.home: (context) =>  const HomePage(),
    Routes.profile: (context) => const ProfilePage()
  };
}
