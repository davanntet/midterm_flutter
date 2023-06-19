import 'dart:math' as Math;

List<AboutHotel> HotelData() {
  List<AboutHotel> list = [];
  List<String> names = [
    'Grand Hotel',
    'Luxury Hotel',
    'Taipei Hotel',
    'Amara Hotel',
    'Hyatt Hotel'
  ];
  List<double> prices = [1000, 900, 3000, 700, 1200];
  List<double> distances = [3443, 7432, 1123, 7643, 506];
  for (int i = 1; i <= 5; i++) {
    list.add(AboutHotel(
        name: names[i - 1],
        image: "lib/asset/hotel/hotel$i.png",
        price: prices[i - 1],
        distance: distances[i - 1]));
  }
  return list;
}

List<AboutHotel> PopularHotelData() {
  List<AboutHotel> list = [];
  List<String> names = [
    'Grand Hotel',
    'Luxury Hotel',
    'Taipei Hotel',
    'Amara Hotel',
    'Hyatt Hotel'
  ];
  List<double> prices = [1000, 900, 3000, 700, 1200];
  List<double> distances = [3443, 7432, 1123, 7643, 506];
  List<double> ratings = [5.0, 4.8, 4.9, 5.0, 4.9];
  for (int i = 1; i <= 5; i++) {
    list.add(AboutHotel(
        name: names[i - 1],
        image: "lib/asset/hotel/hotel$i.png",
        price: prices[i - 1],
        distance: distances[i - 1],
        rating: ratings[i - 1]));
  }
  return list;
}

class AboutHotel {
  String name;
  String image;
  double price;
  double distance;
  double rating;
  AboutHotel(
      {required this.name,
      required this.image,
      required this.distance,
      required this.price,
      this.rating = 5});
}
