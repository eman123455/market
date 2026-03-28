import 'package:flutter/material.dart';
import 'package:market/core/resource/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    required this.inputType,
    this.obscureText = false,
    this.sufficon,
    this.labelText = '', this.validator,
  });
  final TextEditingController controller;
  final String hint;
  final TextInputType inputType;
  final bool obscureText;
  final Widget? sufficon;
  final String labelText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: '*',
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        suffixIcon: sufficon,
        hintText: hint,
        // label: Text(labelText,
        // style: TextStyle(
        //   color: AppColors.kGreyColor
        // ),
        // ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kGreyColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.kPrimaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
