import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/components/custom_search_field.dart';
import 'package:market/core/constants.dart';
import 'package:market/features/home/presentation/widgets/categories_list.dart';
import 'package:market/features/home/presentation/widgets/category_item.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final TextEditingController searchControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomSearchField(searchControll: searchControll),
        SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/images/image.PNG'),
        ),
        SizedBox(height: 15),
        Text(
          'Popular Category',
          style: TextStyle(
            fontSize: 22,
            color: AppColors.kGreyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10,),
        CategoriesList()
      ],
    );
  }
}
