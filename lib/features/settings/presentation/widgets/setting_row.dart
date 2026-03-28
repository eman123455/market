import 'package:flutter/material.dart';
import 'package:market/core/resource/app_colors.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({super.key, required this.settingName, required this.tap, required this.icon});
  final String settingName;
  final IconData icon;
  final void Function() tap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 28, color: AppColors.kPrimaryColor),
        SizedBox(width: 8),
        Text(settingName, style: TextStyle(fontSize: 16)),
        Spacer(),
        IconButton(
          onPressed: tap,
          icon: Icon(Icons.arrow_forward_ios, color: AppColors.kBlackColor),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
