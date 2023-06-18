import 'package:flutter/cupertino.dart';
import 'package:network_assigment_1/Model/HotelData.dart';
import 'package:network_assigment_1/components/Template/PopularCard.dart';

class HomePopular extends StatelessWidget {
  const HomePopular({super.key});

  @override
  Widget build(BuildContext context) {
    List<AboutHotel> hotelData = PopularHotelData();
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Column(
        children: [
          ...List.generate(hotelData.length, (index) => PopularCard(
            price: hotelData[index].price,
            title: hotelData[index].name,
            image: hotelData[index].image,
            distance: hotelData[index].distance,
            rating: hotelData[index].rating,
            )
          )
        ],
      ),
    );
  }
}
