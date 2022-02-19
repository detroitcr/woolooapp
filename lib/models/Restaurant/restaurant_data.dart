class RestaurantData {
  final String name;
  final String image;
  final String location;
  final String distance;
  final String timing;

  RestaurantData({
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.timing,
  });
}

List<RestaurantData> restaurantdata = [
  RestaurantData(
    name: 'Stanza',
    image: 'assets/images/restaurant1.jpg',
    location: 'CP',
    distance: '3 km',
    timing: '8:00 A.M to 8 :00 P.M',
  ),
  RestaurantData(
    name: 'CoolCafe',
    image: 'assets/images/restaurant2.jpg',
    location: 'NSP',
    distance: '3 km',
    timing: '8:00 A.M to 8 :00 P.M',
  ),
  RestaurantData(
    name: 'Proud',
    image: 'assets/images/restaurant3.jpg',
    location: 'Saket',
    distance: '3 km',
    timing: '8:00 A.M to 8 :00 P.M',
  ),
  RestaurantData(
    name: 'Life',
    image: 'assets/images/restaurant4.jpg',
    location: 'Chanakyapuri',
    distance: '3 km',
    timing: '8:00 A.M to 8 :00 P.M',
  ),
];
