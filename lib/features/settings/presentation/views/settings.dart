import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/app_colors.dart';
import 'package:market/core/app_routes.dart';
import 'package:market/core/components/custom_button.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:market/core/functions/app_functions.dart';
import 'package:market/features/settings/presentation/widgets/setting_row.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  final TextEditingController newPassControll = TextEditingController();
  final TextEditingController oldPassControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Settings',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            CircleAvatar(radius: 30, backgroundColor: AppColors.kPrimaryColor),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: AppColors.kGreyColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Eman Kamel',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: AppColors.kBlackColor),
            ),
          ],
        ),
        SizedBox(height: 35),
        Divider(thickness: 0.5, color: AppColors.kGreyColor),
        SizedBox(height: 8),
        SettingRow(
          settingName: 'User Profile',
          tap: () {
            context.push(AppRoutes.kUserProfile);
          },
          icon: Icons.person,
        ),
        SizedBox(height: 8),
        Divider(thickness: 0.5, color: AppColors.kGreyColor),
        SizedBox(height: 8),
        SettingRow(
          settingName: 'Change Password',
          tap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 20,
                    bottom: 40,
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Change Password',
                          style: TextStyle(
                            color: AppColors.kPrimaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Form(
                          child: Column(
                            children: [
                              CustomTextField(
                                hint: 'New Password',
                                controller: newPassControll,
                                inputType: TextInputType.number,
                              ),
                              SizedBox(height: 10),
                              CustomTextField(
                                hint: 'Confirm Password',
                                controller: oldPassControll,
                                inputType: TextInputType.number,
                              ),
                              SizedBox(height: 10),
                              CustomButton(buttonText: 'SAVE', onTap: () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          icon: Icons.lock,
        ),
        Divider(thickness: 0.5, color: AppColors.kGreyColor),
        SettingRow(
          settingName: 'My Orders',
           tap: (){},
            icon: Icons.shopping_bag
            ),
            
        SizedBox(height: 8),
        Divider(thickness: 0.5, color: AppColors.kGreyColor),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(36),
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Text(
                'if you have any other query,\n you can reach out to us',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: AppFunctions.openWhatsapp,
                child: Text(
                  'WhatsApp Us',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
