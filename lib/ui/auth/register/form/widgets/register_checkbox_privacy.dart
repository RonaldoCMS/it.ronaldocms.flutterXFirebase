import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:textfire/core/routing/routes.dart';

class RegisterCheckBoxPrivacy extends StatelessWidget {
  final ValueNotifier<bool> value;
  final void Function(bool?)? onChanged;
  const RegisterCheckBoxPrivacy({super.key,  this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: value,
      builder: (context, value, child) =>
      CheckboxListTile(
        value: value,
        onChanged: onChanged,
        title: RichText(
          
          text: TextSpan(
            
            children: [
              TextSpan(
                text: 'Per registrati devi leggere i ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'termini & condizioni',
                style:
                    TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
               recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).pushNamed(Routes.termsAndConditions),
              ),
              TextSpan(
                text: ' e le ',
                style:
                    TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'politiche di privacy',
                style:
                    TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
