import 'package:flutter/material.dart';

import '../models/products.dart';

class FeaturedProductsGrid extends StatefulWidget {
  final List<Products> products;

  const FeaturedProductsGrid({Key? key, required this.products}) : super(key: key);

  @override
  FeaturedProductsGridState createState() => FeaturedProductsGridState();
}

class FeaturedProductsGridState extends State<FeaturedProductsGrid> {
  List<bool> isBookmarkedList = List.generate(dummyProducts.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(8.0),
        children: List.generate(
          widget.products.length,
              (index) {
            return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        widget.products[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.products[index].name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "KES ${widget.products[index].price.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            // TODO: Add logic for the addition action
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: Icon(
                      isBookmarkedList[index] ? Icons.bookmark : Icons.bookmark_border,
                      color: isBookmarkedList[index] ? Colors.green : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isBookmarkedList[index] = !isBookmarkedList[index];
                      });
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

