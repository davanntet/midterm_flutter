import 'package:flutter/material.dart';

import '../components/Home/CityProfile.dart';
import '../components/Home/HomeBar.dart';
import '../components/Home/HomePopular.dart';
import '../components/Home/HomeSearch.dart';
import '../components/Home/MainTitle.dart';
import '../components/Home/HomeRecommented.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: HomeBar(),
            ),
            HomeSearch(),
            MainTitle(title: "Explore City"),
            SizedBox(
              height: 15,
            ),
            CityProfile(),
            SizedBox(
              height: 30,
            ),
            MainTitle(title: "Recommended for your next trip"),
            SizedBox(
              height: 15,
            ),
            HomeRecommented(),
            SizedBox(
              height: 30,
            ),
            MainTitle(title: "Popular Hotel"),
            HomePopular(),
          ],
        ),
      ),
    );
  }
}
