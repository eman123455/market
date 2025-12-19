import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/constants.dart';
import 'package:market/features/home/bussiness_logic/nav_bar_cubit/nav_bar_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<NavBarCubit>();
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 5),
            child: Constants.views[cubit.currentIndex],
          ),
          bottomNavigationBar: Container(
            color: AppColors.kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: GNav(
                curve: Curves.easeOutExpo,
                duration: Duration(milliseconds: 600),
                gap: 8,
                color: AppColors.kGreyColor,
                activeColor: AppColors.kWhiteColor,
                iconSize: 32,
                tabBackgroundColor: AppColors.kPrimaryColor,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                onTabChange: (index) {
                  cubit.changeCurrentIndex(index);
                },
                tabs: [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.store, text: 'Store'),
                  GButton(icon: Icons.favorite, text: 'Favourite'),
                  GButton(icon: Icons.settings, text: 'settings'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
