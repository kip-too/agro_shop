import 'package:farm/models/products.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/widgets_barrel.dart';

class HomeScreen extends StatelessWidget {
  static String id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children:  <Widget>[
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search here ...'),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.25,
                    // width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Row(
                      children: <Widget>[
                         Expanded(
                           child: Column(
                             children: <Widget>[
                               const Text("Free Consultation",
                               style: TextStyle(
                                 color: Colors.green,
                                 fontSize: 26,
                               ),
                               ),
                               const Padding(
                                 padding: EdgeInsets.all(8.0),
                                 child: Text("Get free service from our customer service ",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 15,
                                 ),
                                 ),
                               ),
                              CustomButton(
                                  onPressed: (){
                                    //TODO: logic
                                  },
                                  buttonText: "Call Now",
                                width: MediaQuery.of(context).size.width * 0.3,
                              )

                             ],
                           ),
                         ),
                        const Image(image: AssetImage("assets/images/consultation.jpeg",),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  <Widget>[
                      const Text("Featured products",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),
                      InkWell(
                        onTap: (){
                          //TODO: logic
                        },
                        child: const Text("See all",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                 FeaturedProductsGrid(products: dummyProducts,),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigation(),
        ),
    );
  }
}
