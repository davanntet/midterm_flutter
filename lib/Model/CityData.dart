List<AboutCity> CityData() {
  List<AboutCity> list = [];
  List<String> names = [
    'Dobai',
    'London',
    'HongKong',
    'New York',
    'Milan',
    'Bei Jing',
    'Kratie',
    'Roam',
    'Madrid',
    'Paris'
  ];
  for (int i = 1; i <= 10; i++) {
    list.add(AboutCity(name: names[i - 1], image: "lib/asset/city/city$i.png"));
  }
  return list;
}

class AboutCity {
  String name;
  String image;
  AboutCity({required this.name, required this.image});
}
