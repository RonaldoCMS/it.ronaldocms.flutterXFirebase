import 'package:flutter/material.dart';
import 'package:textfire/core/routing/routes.dart';

class LoginRegisterWidget extends StatelessWidget {
  const LoginRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          Navigator.of(context).pushReplacementNamed(Routes.register),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Non hai un account? ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Sign up!',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
