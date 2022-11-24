import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPass;
  final TextInputType inputTextType;

  const InputTextField(
      {required this.hintText,
      required this.controller,
      this.isPass = false,
      super.key,
      required this.inputTextType});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
      ),
      obscureText: isPass,
      keyboardType: inputTextType,
    );
  }
}
