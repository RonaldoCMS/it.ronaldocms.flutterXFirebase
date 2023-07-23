import 'package:flutter/material.dart';
import 'package:textfire/core/routing/routes.dart';

class AuthButtonLoginWidget extends StatelessWidget {
  const AuthButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).pushReplacementNamed(Routes.login),
      child: const Text("Lanciati!"),
    );
  }
}
