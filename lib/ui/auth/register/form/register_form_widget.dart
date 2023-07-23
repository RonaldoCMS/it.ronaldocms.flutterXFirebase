import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/ui/auth/register/form/widgets/register_checkbox_privacy.dart';
import 'package:textfire/ui/widget/textfields/address/custom_textfield_address.dart';
import 'package:textfire/ui/widget/textfields/password/cubit/custom_textfield_password_hidden_cubit.dart';
import 'package:textfire/ui/widget/textfields/password/custom_textfield_password.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.privacyListenable,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueNotifier<bool> privacyListenable;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFieldAddressWidget(controller: emailController),
          BlocProvider(
            create: (context) => CustomTextFieldPasswordHiddenCubit(),
            child:
                CustomTextFieldPasswordWidget(controller: passwordController),
          ),
          
          RegisterCheckBoxPrivacy(
            value: privacyListenable,
            onChanged: (value) => privacyListenable.value = value!,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Sign up")),
          ),
        ],
      ),
    );
  }
}
