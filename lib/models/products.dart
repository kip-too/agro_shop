class Products {
  String imageUrl;
  String name;
  double price;

  Products.name(this.name, this.price, this.imageUrl);
}

List<Products> dummyProducts = [
  Products.name(
    "Apples",
    25.0,
    "assets/images/apples.jpeg",
  ),
  Products.name(
    "Tractor",
    5000.0,
    "assets/images/tractor.jpeg",
  ),
  Products.name(
    "Wheat",
    180.0,
    "assets/images/wheat.jpeg",
  ),
  Products.name(
    "Knapsack",
    2000.0,
    "assets/images/knapsack.jpeg",
  ),
  Products.name(
    "Apples",
    25.0,
    "assets/images/apples.jpeg",
  ),
  Products.name(
    "Tractor",
    5000.0,
    "assets/images/tractor.jpeg",
  ),
  Products.name(
    "Wheat",
    180.0,
    "assets/images/wheat.jpeg",
  ),
  Products.name(
    "Knapsack",
    2000.0,
    "assets/images/knapsack.jpeg",
  ),
];
