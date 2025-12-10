import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/components/custom_search_field.dart';
import 'package:market/core/components/custom_text_field.dart';

class HomeBody extends StatelessWidget {
 HomeBody({super.key});
  final TextEditingController searchControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomSearchField(searchControll: searchControll),
        
      ],
    );
  }
}
