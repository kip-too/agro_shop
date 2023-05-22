import 'package:flutter/material.dart';

import '../widgets/widgets_barrel.dart';

class SignUpScreen extends StatefulWidget {
  static String id = "sign_up_screen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    color: Colors.white,
                    child: const Image(
                        image: AssetImage("assets/images/farm.jpeg")),
                  ),
                ),
                RichText(
                    text: const TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ))),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Phone Number',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Expanded(child: CustomCheckBox()),
                    RichText(
                        text: const TextSpan(
                            text: "Forgot Password?",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 12,
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onPressed: () {
                    //TODO: add sign up logic
                  },
                  buttonText: 'Sign Up',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: RichText(
                        text: const TextSpan(
                          text: "or sign up with",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GoogleSignIn(
                      onPressed: () {
                        //TODO:  add logic
                      },
                    ),
                    FaceBookSignIn(onPressed: () {}),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                        text: const TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ))),
                    InkWell(
                      onTap: () {
                        //TODO: IMPLEMENT THE LOGIC
                      },
                      child: RichText(
                          text: const TextSpan(
                              text: "Log in",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              ))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
