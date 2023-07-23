import 'package:flutter/material.dart';
import 'package:textfire/ui/auth/login/form/widget/confirm/login_form_confirm_action.dart';

class LoginFormConfirmWidget extends StatelessWidget {
  const LoginFormConfirmWidget({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => loginFormConfirmAction(
        context: context,
        username: usernameController.text,
        password: passwordController.text,
      ),
      child: const Text("Login"),
    );
  }
}
