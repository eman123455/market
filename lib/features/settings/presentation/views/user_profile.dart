import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:market/core/resource/app_colors.dart';
import 'package:market/core/components/custom_button.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:market/core/functions/app_functions.dart';

class UserProfile extends StatelessWidget {
 UserProfile({super.key});
  final TextEditingController firstnameController= TextEditingController();
  final TextEditingController lastnameController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppFunctions.customAppBar(text: 'My Profile'),

      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 10,left: 10),
        child: Form(
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        right: -4,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.camera_alt,
                            size: 18,
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              CustomTextField(
                hint: 'First name',
                labelText: 'First name',
                controller: firstnameController,
                inputType: TextInputType.name,
                ),
              SizedBox(height: 18,),
              CustomTextField(
                hint: 'Last name',
                labelText: 'last name',
                controller: lastnameController,
                inputType: TextInputType.name,
                ),
              SizedBox(height: 18,),
              CustomTextField(
                hint: 'E-mail',
                labelText: 'E-mail',
                controller: lastnameController,
                inputType: TextInputType.name,
                ),
              SizedBox(height: 18,),
              CustomButton(
                buttonText:'UPDATE',
                 onTap: (){
        
                 }
                 )
            ],
          ),
        ),
      ),
    );
  }

  
}
