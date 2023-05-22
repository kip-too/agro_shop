import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  CustomCheckBoxState createState() => CustomCheckBoxState();
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text("Remember Me"),
      value: _isChecked,
      onChanged: (newValue) {
        setState(() {
          _isChecked = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
