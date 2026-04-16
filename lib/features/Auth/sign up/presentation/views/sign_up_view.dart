import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/components/custom_profile_photo.dart';
import 'package:market/core/resource/app_routes.dart';
import 'package:market/core/components/custom_button.dart';
import 'package:market/core/components/custom_text_button.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpView> {
  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  bool obscureTextdecision = true;
  @override
  void initState() {
    emailController = TextEditingController();
    passController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                CustomProfilePhoto(imgUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff'),
                SizedBox(height: 20.h,),
                      CustomTextField(
                        hint: 'First name',
                        labelText: 'First name',
                        controller: firstNameController,
                        inputType: TextInputType.name,
                      ),
                      SizedBox(height: 12),
                      CustomTextField(
                        hint: 'Last name',
                        labelText: 'last name',
                        controller: lastNameController,
                        inputType: TextInputType.name,
                      ),
                      SizedBox(height: 15),
                      CustomTextField(
                        hint: 'E-mail',
                        controller: emailController,
                        inputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        hint: 'password',
                        controller: passController,
                        inputType: TextInputType.number,
                        obscureText: obscureTextdecision,
                        sufficon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureTextdecision = !obscureTextdecision;
                            });
                          },
                          icon: obscureTextdecision
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(height: 40),
                      CustomButton(buttonText: 'Sign Up', onTap: () {}),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: SignInButton(
                          Buttons.google,
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          text: "Sign up with Google",
                          textStyle: TextStyle(fontSize: 18),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextButton(
                      onTap: () {
                        context.go(AppRoutes.kLoginView);
                      },
                      textColor: Colors.orange,
                      text: 'Login',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
