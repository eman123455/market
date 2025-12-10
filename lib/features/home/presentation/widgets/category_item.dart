import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key ,required this.icon, required this.itemName});
  final String itemName;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.kPrimaryColor,
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.kWhiteColor),
          SizedBox(width: 10),
          Center(
            child:Text(
              itemName,
              style: TextStyle(color: AppColors.kWhiteColor, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
