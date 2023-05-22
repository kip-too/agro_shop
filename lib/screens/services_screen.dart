import 'package:farm/models/products.dart';
import 'package:farm/models/service.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets_barrel.dart';

class ServicesScreen extends StatelessWidget {
  static String id = "services_screen";

  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      //TODO: logic
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "Services",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //TODO: add logic
                    },
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ServiceGrid(services: Service.dummyService,)
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}

