import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/app_routes.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool obscureTextdecision = true;
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
                  'lib/assets/283e86d4-6cfc-4e55-988b-a1d4ae5b7094.png',
                  width: 200,
                  height: 200,
                ),

                Form(
                  child: Column(
                    children: [
                      CustomTextField(
                        hint: 'name',
                        controller: emailController,
                        inputType: TextInputType.name,
                      ),
                      const SizedBox(height: 15),
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
                      SizedBox(height: 40),
                      CustomButton(
                        buttonText: 'Sign Up',
                        onTap: (){
                          
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
