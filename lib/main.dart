import 'package:flutter/material.dart';
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
      routerConfig: AppRoutes.routes,
    );
  }
}
