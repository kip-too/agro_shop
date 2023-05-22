import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  <Widget>[
          const Icon(
            Icons.menu
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Hi Kiptoo \u{1F44B}',
                style: TextStyle(
                  fontSize: 30,
                ),

              ),
              Text(
                "Enjoy our services",
                style: TextStyle(
                  fontSize: 20,
                ),


              ),
            ],
          ),
          const Icon(
            Icons.notifications,
            color: Colors.green,
            size: 30,
          ),
        ],
      ),
    );
  }
}
