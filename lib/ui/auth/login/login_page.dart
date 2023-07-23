import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/ui/auth/login/form/bloc/login_form_bloc.dart';
import 'package:textfire/ui/auth/login/login_forget_widget.dart';
import 'package:textfire/ui/auth/login/form/login_form_widget.dart';
import 'package:textfire/ui/auth/login/login_register_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Hey, Welcome Back!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Hello again, you've been missed!",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              BlocProvider(
                create: (context) => LoginFormBloc(),
                child: const LoginFormWidget(),
              ),
              const Divider(),
              const LoginForgetWidget(),
              const Spacer(),
              const Divider(),
              const LoginRegisterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
