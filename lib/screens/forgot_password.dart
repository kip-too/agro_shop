import 'package:farm/widgets/widgets_barrel.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String id = "forgot_password_screen";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RichText(
            text: const TextSpan(
              text: "Forgot Password",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/pass.png',
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              text:
                  "Please Enter your phone number.We will send  a code to your number to reset your password.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.phone),
            hintText: "Enter your phone number",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {
              //TODO: implement logic
            },
            buttonText: 'Get OTP',
          ),
        ],
      ),
    ));
  }
}
