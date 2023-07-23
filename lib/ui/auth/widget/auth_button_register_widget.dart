import 'package:flutter/material.dart';
import 'package:textfire/core/routing/routes.dart';

class AuthButtonRegisterWidget extends StatelessWidget {
  const AuthButtonRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          Navigator.of(context).pushReplacementNamed(Routes.register),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Sei nuovo? ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Registrati!',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
