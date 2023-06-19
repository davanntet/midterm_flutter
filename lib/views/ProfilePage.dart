import 'package:flutter/material.dart';
import '../components/Profile/HeaderProfile.dart';
import '../components/Profile/ProfileAccountSetting.dart';
import '../components/Profile/ProfileSupportSetting.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        ProfileHeader(),
        SizedBox(
          height: 30,
        ),
        ProfileAccountSetting(),
        SizedBox(
          height: 30,
        ),
        ProfileSupportSetting(),
        SizedBox(
          height: 30,
        ),
      ],
    )));
  }
}
