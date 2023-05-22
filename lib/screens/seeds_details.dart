import 'package:flutter/material.dart';

import '../widgets/widgets_barrel.dart';
class SeedsDetailsScreen extends StatefulWidget {
  static String id = "seeds_details_screen";
  const SeedsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SeedsDetailsScreen> createState() => _SeedsDetailsScreenState();
}

class _SeedsDetailsScreenState extends State<SeedsDetailsScreen> {
  bool showFullText = false; // Added variable to control text visibility

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 50.0),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: _SeedsDetailsAppBar(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const ImageCarousel(),
              const SizedBox(height: 10),
              const Text(
                "Rice Seeds",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Available in stock",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "KES 150/kg",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "4.9(258)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.remove_circle,
                          color: Colors.green,
                        ),
                        Text(
                          "1 Kg",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum augue nec urna bibendum lobortis. Proin id elit sit amet nulla faucibus fermentum ac non urna. Vestibulum nec enim non risus venenatis consectetur a eget nisl.",
                      maxLines: showFullText ? null : 3, // Set max lines to 3
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showFullText = !showFullText; // Toggle text visibility
                        });
                      },
                      child: Text(
                        showFullText ? "Read Less..." : "Read More...",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SeedsDetailsAppBar extends StatelessWidget {
  const _SeedsDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.arrow_back_ios,
        ),
        Text(
          "Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        Icon(
          Icons.bookmark_border_outlined,
        ),
      ],
    );
  }
}
