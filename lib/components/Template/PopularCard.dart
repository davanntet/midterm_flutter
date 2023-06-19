import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard(
      {super.key,
      required this.price,
      required this.title,
      required this.distance,
      required this.image,
      required this.rating});
  final double price;
  final String title;
  final double distance;
  final String image;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: [
      Container(
        height: MediaQuery.of(context).size.width * 0.3,
        width: MediaQuery.of(context).size.width * 0.3,
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/image/arrow.png',
                      width: 30,
                    ),
                    Text(
                      " $distance km",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 19,
                    ),
                    Text(
                      "$rating",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Start from \$$price per night",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 5,
          ),
        ]),
      )
    ]));
  }
}
