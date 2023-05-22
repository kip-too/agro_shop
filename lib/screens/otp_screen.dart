import 'package:flutter/material.dart';

import '../widgets/widgets_barrel.dart';

class OtpScreen extends StatefulWidget {
  static String id = "otp_screen";
  const OtpScreen({super.key});

  @override
  OtpScreenState createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Verify OTP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Replace this with your desired animation widget
              Image.asset("assets/images/otp.jpeg"),
              const SizedBox(height: 20),
              const Text(
                'We have just sent a six-digit code to your entered number.\nEnter the code below:',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  OtpDigitField(),
                  OtpDigitField(),
                  OtpDigitField(),
                  OtpDigitField(),
                  OtpDigitField(),
                  OtpDigitField(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                      text: const TextSpan(
                          text: "Didn't receive a code? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ))),
                  InkWell(
                    onTap: () {
                      //TODO: IMPLEMENT LOGIC
                    },
                    child: RichText(
                        text: const TextSpan(
                            text: "Resend",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            ))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                onPressed: () {},
                buttonText: "Verify",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
