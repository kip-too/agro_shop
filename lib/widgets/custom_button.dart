import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double? width;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.green,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
