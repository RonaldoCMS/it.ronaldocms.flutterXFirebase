
import 'package:flutter/material.dart';

class AuthDescriptionWidget extends StatelessWidget {
  const AuthDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Let's Get Started",
            style: TextStyle(fontSize: 64),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "Connect with each other with chatting or calling. Enjoy safe and private texting"),
        ),
      ],
    );
  }
}
