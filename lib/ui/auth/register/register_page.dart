import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/ui/auth/register/form/register_form_widget.dart';
import 'package:textfire/ui/widget/textfields/address/custom_textfield_address.dart';
import 'package:textfire/ui/widget/textfields/password/cubit/custom_textfield_password_hidden_cubit.dart';
import 'package:textfire/ui/widget/textfields/password/custom_textfield_password.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var privacyNotifier = ValueNotifier(false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Placeholder(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              RegisterFormWidget(
                emailController: emailController,
                passwordController: passwordController,
                privacyListenable: privacyNotifier,
              ),
              Divider(),
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed(Routes.login),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hai Gia un account? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Login!',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
