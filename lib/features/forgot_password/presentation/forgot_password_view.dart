import 'package:flutter/material.dart';
import 'package:market/core/reusable_widgets/custom_button.dart';
import 'package:market/core/reusable_widgets/custom_text_field.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});
  final TextEditingController forgotPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 60, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Reset password',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'Enter your account email  to recieve a \n password reset link',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey, height: 1.5),
              ),
              SizedBox(height: 40),
              CustomTextField(
                hint: 'Email address',
                controller: forgotPass,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              CustomButton(
                buttonText: 'Reset Password ',
                onTap: (){
                  
                },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
