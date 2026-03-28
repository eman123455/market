import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/components/custom_circular_progress_indicator.dart';
import 'package:market/core/components/show_error_message.dart';
import 'package:market/core/functions/validation.dart';
import 'package:market/core/resource/app_colors.dart';
import 'package:market/core/resource/app_routes.dart';
import 'package:market/core/components/custom_button.dart';
import 'package:market/core/components/custom_text_button.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:market/features/Auth/login/business_logic/authentication_cubit/authentication_cubit.dart';
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
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.go(AppRoutes.kHome);
        } else if (state is LoginFailed) {
          showErrMsg(context, state.errMsg);
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 40,
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/283e86d4-6cfc-4e55-988b-a1d4ae5b7094.png',
                          width: 200,
                          height: 200,
                        ),
                        const SizedBox(height: 20),
                        Form(
                          key: _key,
                          child: Column(
                            children: [
                              CustomTextField(
                                hint: 'email',
                                validator: (value) =>
                                    Validation.emailValidator(value),
                                controller: emailController,
                                inputType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 15),
                              CustomTextField(
                                hint: 'password',
                                validator: (value) =>
                                    Validation.passValidator(value),
                                controller: passController,
                                inputType: TextInputType.text,
                                obscureText: obscureTextdecision,
                                sufficon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscureTextdecision =
                                          !obscureTextdecision;
                                    });
                                  },
                                  icon: Icon(
                                    obscureTextdecision
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Align(
                                alignment: Alignment.topRight,
                                child: CustomTextButton(
                                  onTap: () {
                                    context.push(AppRoutes.kForgotPasswordView);
                                  },
                                  textColor: AppColors.kPrimaryColor,
                                  text: 'Forgot Password ?',
                                ),
                              ),
                              const SizedBox(height: 40),
                              CustomButton(
                                buttonText: 'Sign In',
                                onTap: () {
                                  if (_key.currentState!.validate()) {
                                    BlocProvider.of<AuthenticationCubit>(
                                      context,
                                    ).loginWithEmailAndPass(
                                      email: emailController.text,
                                      password: passController.text,
                                    );
                                  }
                                },
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                width: double.infinity,
                                child: SignInButton(
                                  Buttons.google,
                                  padding: const EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  text: "Sign In with Google",
                                  textStyle: const TextStyle(fontSize: 18),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
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

              if (state is LoginLoading)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  child: const Center(child: CustomCircularProgressIndicator()),
                ),
            ],
          ),
        );
      },
    );
  }
}
