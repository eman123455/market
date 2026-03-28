import 'package:flutter/material.dart';
import 'package:market/core/resource/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFunctions {
  static void openWhatsapp() async {
    final Uri url = Uri.parse('https://wa.me/201003286729');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      SnackBar(
        backgroundColor: AppColors.kBlackColor,
        content: Text('Cann\'t open whatsApp')
        );
    }
  }
  static AppBar customAppBar({required String text}) {
    return AppBar(
      backgroundColor:   AppColors.kPrimaryColor,
      title: Text(
        text,
        style: TextStyle(color: AppColors.kScaffoldColor,fontWeight: FontWeight.bold),
      ),
      iconTheme: IconThemeData(color: AppColors.kScaffoldColor),
    );
  }
}
