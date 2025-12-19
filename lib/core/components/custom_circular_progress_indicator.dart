import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(color: AppColors.kPrimaryColor),
      ),
    );
  }
}
