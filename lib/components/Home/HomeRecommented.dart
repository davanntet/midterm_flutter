import 'package:flutter/material.dart';
import '../../Model/HotelData.dart';
import '../Template/RecommandedCard.dart';

class HomeRecommented extends StatelessWidget {
  const HomeRecommented({super.key});

  @override
  Widget build(BuildContext context) {
    List<AboutHotel> hotelData = HotelData();
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.7,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(
              hotelData.length,
              (index) => RecommandedCard(
                    price: hotelData[index].price,
                    title: hotelData[index].name,
                    image: hotelData[index].image,
                    distance: hotelData[index].distance,
                  ))
        ],
      ),
    );
  }
}
