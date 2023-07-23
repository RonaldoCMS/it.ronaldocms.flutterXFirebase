import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

class CustomTextFieldAddressWidget extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextFieldAddressWidget({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Email",
            style: TextStyle(fontSize: 18),
          ),
        ),
        TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), prefixIcon: Icon(Ionicons.mail)),
        ),
      ],
    );
  }
}
