import 'package:flutter/material.dart';
import 'package:market/core/resource/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key ,required this.buttonText, required this.onTap});
  final String buttonText;
  final void  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
