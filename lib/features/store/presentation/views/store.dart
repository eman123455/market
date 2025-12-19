import 'package:flutter/material.dart';
import 'package:market/core/components/custom_search_field.dart';
import 'package:market/core/components/product_List.dart';

class Store extends StatelessWidget {
  Store({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            'Welcome to Shoplio',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10,),
        CustomSearchField(searchControll: controller),
        const SizedBox(height: 10,),
        ProductList(),
      ],
    );
  }
}
