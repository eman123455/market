import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/components/custom_text_field.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key,required this.searchControll});
  final TextEditingController searchControll;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: 'search',
      controller: searchControll,
      inputType: TextInputType.text,
      sufficon: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.search, color: AppColors.kWhiteColor),
        ),
      ),
    );
  }
}
