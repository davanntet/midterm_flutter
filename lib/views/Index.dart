import 'package:flutter/material.dart';

import '../utils/GetMaterail.dart';
import 'BookingPage.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';
import 'TripPage.dart';
import 'WishlistPage.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomePage(),
          WishlistPage(),
          TripPage(),
          BookingPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: Colors.grey.withOpacity(0.15), width: 1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/asset/bottom/home.png',
                    width: 25,
                    height: 25,
                    color: selectedIndex == 0
                        ? MaterialColors.one
                        : MaterialColors.four,
                  ),
                  label: "Home",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/asset/bottom/wishlist.png',
                    width: 25,
                    height: 25,
                    color: selectedIndex == 1
                        ? MaterialColors.one
                        : MaterialColors.four,
                  ),
                  label: "Wishlist",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/asset/bottom/trip.png',
                    width: 25,
                    height: 25,
                    color: selectedIndex == 2
                        ? MaterialColors.one
                        : MaterialColors.four,
                  ),
                  label: "Trips",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/asset/bottom/booking.png',
                    width: 25,
                    height: 25,
                    color: selectedIndex == 3
                        ? MaterialColors.one
                        : MaterialColors.four,
                  ),
                  label: "Booking",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'lib/asset/bottom/profile.png',
                    width: 25,
                    height: 25,
                    color: selectedIndex == 4
                        ? MaterialColors.one
                        : MaterialColors.four,
                  ),
                  label: "Profile",
                  backgroundColor: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
