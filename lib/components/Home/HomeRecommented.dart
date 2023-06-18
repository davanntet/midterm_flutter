import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_assigment_1/Model/HotelData.dart';

import '../Template/RecommandedCard.dart';


class HomeRecommented extends StatelessWidget {
  const HomeRecommented({super.key});

  @override
  Widget build(BuildContext context) {
    List<AboutHotel> hotelData = HotelData();
    return Container(
      height: MediaQuery.of(context).size.width * 0.7,
      child: ListView(

        padding: EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(hotelData.length, (index) => RecommandedCard(
            price: hotelData[index].price,
            title: hotelData[index].name,
            image: hotelData[index].image,
            distance: hotelData[index].distance,
          )
          )
        ],
      ),
    );
  }
}
