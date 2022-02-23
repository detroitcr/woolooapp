class FoodData {
  final String name;
  final String image;
  final String price;
  final String description;
  int quantity;

  FoodData({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.quantity,
  });
}

List<FoodData> fooddataitems = [
  FoodData(
    image: 'assets/images/burger.jpg',
    name: 'Burger',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/fries.jpg',
    name: 'Fries',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/sandwich.jpg',
    name: 'Sandwich',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/pizza.jpg',
    name: 'Pizza',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/momos.jpg',
    name: 'Momos',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/noodles.jpg',
    name: 'Noodles',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/chicken.jpg',
    name: 'chicken',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
  FoodData(
    image: 'assets/images/lassi.jpeg',
    name: 'Lassi',
    price: '129',
    description: 'description',
    quantity: 0,
  ),
];
