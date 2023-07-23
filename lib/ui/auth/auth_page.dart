import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/ui/auth/widget/auth_button_login_widget.dart';
import 'package:textfire/ui/auth/widget/auth_button_register_widget.dart';
import 'package:textfire/ui/auth/widget/auth_description_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Placeholder(),
              AuthDescriptionWidget(),
              AuthButtonLoginWidget(),
              AuthButtonRegisterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
