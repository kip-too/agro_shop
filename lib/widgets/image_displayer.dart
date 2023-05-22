import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  ImageCarouselState createState() => ImageCarouselState();
}

class ImageCarouselState extends State<ImageCarousel> {
  final int _currentIndex = 0;
  final List<String> _imagePaths = [
    "assets/images/seeds.jpeg",
    "assets/images/seeds.jpeg",
    "assets/images/seeds.jpeg",
    "assets/images/seeds.jpeg",
    "assets/images/seeds.jpeg",

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, left: 10.0, right: 10),
      child: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(_imagePaths[_currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildDotIndicators(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDotIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < _imagePaths.length; i++) {
      indicators.add(
        Container(
          width: 8.0,
          height: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == i ? Colors.green : Colors.white,
          ),
        ),
      );
    }
    return indicators;
  }
}