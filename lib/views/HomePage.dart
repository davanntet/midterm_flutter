
import 'package:flutter/material.dart';
import 'package:network_assigment_1/components/Home/HomePopular.dart';


import '../components/Home/CityProfile.dart';
import '../components/Home/HomeBar.dart';
import '../components/Home/HomeSearch.dart';
import '../components/Home/MainTitle.dart';
import '../components/Home/HomeRecommented.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(15),
              child: HomeBar(),
            ),
            HomeSearch(),
            MainTitle(title: "Explore City"),
            SizedBox(height: 15,),
            CityProfile(),
            SizedBox(height: 20,),
            MainTitle(title: "Recommended for your next trip"),
            //SizedBox(height: 5,),
            HomeRecommented(),
            SizedBox(height: 20,),

            MainTitle(title: "Popular Hotel"),
            HomePopular(),
          ],
        ),
      ),
    );
  }
}