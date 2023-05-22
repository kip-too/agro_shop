import 'package:farm/widgets/widgets_barrel.dart';
import 'package:flutter/material.dart';

class PersonalDetailsScreen extends StatelessWidget {
  static String id = "personal_details_screen";
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RichText(
            text: const TextSpan(
              text: "Personal Details",
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
          RichText(
            text: const TextSpan(
              text: "Your personal details will help us service you better.",
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
            prefixIcon: Icon(Icons.person),
            hintText: "Fullname",
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.local_post_office),
            hintText: "Address",
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.local_post_office),
            hintText: "Post Code",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {
              //TODO: implement logic
            },
            buttonText: 'Save',
          ),
        ],
      ),
    ));
  }
}
