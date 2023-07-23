import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:textfire/ui/widget/textfields/password/cubit/custom_textfield_password_hidden_cubit.dart';

class CustomTextFieldPasswordWidget extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextFieldPasswordWidget({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text("Password", style: TextStyle(fontSize: 18),),
        ),
        BlocBuilder<CustomTextFieldPasswordHiddenCubit, bool>(
          builder: (context, state) {
            return TextField(
              controller: controller,
              obscureText: state,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Ionicons.lock_closed),
                suffixIcon: IconButton(
                  onPressed: () =>
                      context.read<CustomTextFieldPasswordHiddenCubit>().onSwitch(),
                  icon: Icon(!state ? Ionicons.eye : Ionicons.eye_off),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
