
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {

  CustomTextField({
    super.key,
    required this.Controller,
    required this.isPassword,
    required this.hint,
    required this.mySuffixIcon, required this.type
  });

  final TextEditingController Controller;
  bool isPassword;
  String hint;
  TextInputType type;
  Icon mySuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      obscureText: isPassword?true:false,
      keyboardType: type,
      decoration: InputDecoration(
          //border: OutlineInputBorder(),
          hintText: hint,
          suffixIcon:mySuffixIcon

      ),
    );
  }
}

