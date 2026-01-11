import 'package:flutter/material.dart';
import 'package:market/core/components/product_List.dart';
import 'package:market/core/functions/app_functions.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppFunctions.customAppBar(text: 'My Orders'),
      body: ListView(children: [ProductList()]),
    );
  }
}