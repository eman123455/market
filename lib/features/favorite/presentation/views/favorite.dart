import 'package:flutter/material.dart';
import 'package:market/core/components/product_List.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text('your favourite products',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        SizedBox(height: 10,),
        ProductList()
      ],
    );
  }
}
