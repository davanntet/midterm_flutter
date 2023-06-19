import 'package:flutter/material.dart';

import '../../Model/CityData.dart';

class CityProfile extends StatelessWidget {
  const CityProfile({super.key});

  @override
  Widget build(BuildContext context) {
    List<AboutCity> cityData = CityData();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              cityData.length,
              (index) => SizedBox(
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 80,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(cityData[index].image),
                        //),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        cityData[index].name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
