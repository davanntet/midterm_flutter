import 'package:flutter/material.dart';
import 'package:network_assigment_1/components/Home/MainTitle.dart';
import 'package:network_assigment_1/components/Profile/HeaderProfile.dart';
import 'package:network_assigment_1/components/Profile/ProfileAccountSetting.dart';
import 'package:network_assigment_1/components/Profile/ProfileSupportSetting.dart';

import '../utils/GetMaterail.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 20,),
            ProfileAccountSetting(),
            SizedBox(height: 20,),
            ProfileSupportSetting(),
            SizedBox(height: 20,),
          ],
        )
      )
    );
  }
}
