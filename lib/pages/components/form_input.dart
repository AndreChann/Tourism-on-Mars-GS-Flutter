import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String label;
  final bool? obscure;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  FormInput({
    required this.label,
    this.obscure,
    this.userInputController,
    this.onEditingComplete,
    this.focusNode
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode, 
      obscureText: obscure ?? false,
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
