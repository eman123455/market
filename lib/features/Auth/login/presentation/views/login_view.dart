import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/resource/app_colors.dart';
import 'package:market/core/resource/app_routes.dart';
import 'package:market/core/components/custom_button.dart';
import 'package:market/core/components/custom_text_button.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();
  bool obscureTextdecision = true;
  final _key = GlobalKey<FormState>();
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
                Image.asset(
                  'assets/images/283e86d4-6cfc-4e55-988b-a1d4ae5b7094.png',
                  width: 200,
                  height: 200,
                ),

                Form(
                  key: _key,
                  child: Column(
                    children: [
                      CustomTextField(
                        hint: 'email',
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
                      GestureDetector(
                        onTap: () {},
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CustomTextButton(
                            onTap: () {
                              context.push(AppRoutes.kForgotPasswordView);
                            },
                            textColor: AppColors.kPrimaryColor,
                            text: 'Forgot Password ?',
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      CustomButton(
                        buttonText: 'Sign In',
                        onTap: () {
                          context.go(AppRoutes.kHome);
                        },
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: SignInButton(
                          Buttons.google,
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          text: "Sign In with Google",
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
                      'Not a member yet? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextButton(
                      onTap: () {
                        context.push(AppRoutes.kSignUp);
                      },
                      textColor: Colors.orange,
                      text: 'Sign Up',
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
