import 'package:flutter/material.dart';

class ButtonCta extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  ButtonCta({required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade900
        ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
