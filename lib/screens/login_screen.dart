import 'package:flutter/material.dart';

import '../widgets/widgets_barrel.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        text: "Login",
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
                const CustomTextField(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Re-enter password",
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onPressed: () {
                    //TODO: add sign up logic
                  },
                  buttonText: 'Login',
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
                          text: "or login with",
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
                            text: "Don't have an account? ",
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
                              text: "Sign up",
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
