import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/ui/auth/login/form/bloc/login_form_bloc.dart';
import 'package:textfire/ui/auth/login/form/login_form_listener.dart';
import 'package:textfire/ui/auth/login/form/widget/confirm/login_form_confirm_widget.dart';
import 'package:textfire/ui/widget/textfields/address/custom_textfield_address.dart';
import 'package:textfire/ui/widget/textfields/password/cubit/custom_textfield_password_hidden_cubit.dart';
import 'package:textfire/ui/widget/textfields/password/custom_textfield_password.dart';

  
class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocListener<LoginFormBloc, LoginFormState>(
      listener: loginFormListener,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFieldAddressWidget(controller: usernameController),
          BlocProvider(
            create: (context) => CustomTextFieldPasswordHiddenCubit(),
            child: CustomTextFieldPasswordWidget(controller: passwordController),
          ),
          LoginFormConfirmWidget(
              usernameController: usernameController,
              passwordController: passwordController)
        ],
      ),
    );
  }
}
