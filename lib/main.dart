import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/app_routes.dart';

void main() {
  runApp(const MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'our market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor
      ),
      routerConfig: AppRoutes.routes,
    );
  }
}
