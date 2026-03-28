import 'package:flutter/material.dart';
import 'package:market/core/resource/constants.dart';
import 'package:market/features/home/presentation/widgets/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Constants.popularCategory.length,
            itemBuilder: (context, index) {
              final item = Constants.popularCategory[index];
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CategoryItem(
                  itemName:item.categoryName ,
                  icon: item.icon,
                ),
              );
            },
          ),
        );
  }
}