import 'package:farm/widgets/widgets_barrel.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String id = "reset_password_screen";

  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RichText(
            text: const TextSpan(
              text: "Reset Password",
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
              text: "Use atleast six characters strong Password.",
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
            prefixIcon: Icon(Icons.lock),
            hintText: "Enter new password",
            suffixIcon: Icon(Icons.visibility),
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock),
            hintText: "Re-enter new password",
            suffixIcon: Icon(Icons.visibility),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {
              //TODO: implement logic
            },
            buttonText: 'Reset',
          ),
        ],
      ),
    ));
  }
}
