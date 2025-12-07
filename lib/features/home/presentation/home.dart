import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:market/core/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(''),
      bottomNavigationBar: Container(
        color: AppColors.kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
          child: GNav(
            curve: Curves.easeOutExpo, 
            duration: Duration(milliseconds: 600), 
            gap: 8,
            color: AppColors.kGreyColor, 
            activeColor:AppColors.kWhiteColor, 
            iconSize: 32, 
            tabBackgroundColor: AppColors.kPrimaryColor, 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), 
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.store,
                text: 'Store',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favourite',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ]
            ),
        ),
      ),
    );
  }
}