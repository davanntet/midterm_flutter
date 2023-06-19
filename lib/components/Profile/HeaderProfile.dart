import 'package:flutter/material.dart';
import '../../utils/GetMaterail.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
  final double proifleSize = 60;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width * 0.5,
                  width: double.infinity,
                  color: MaterialColors.one,
                  child: Text("Profile",
                      style: Theme.of(context).textTheme.labelMedium),
                ),
                SizedBox(
                  height: proifleSize,
                  width: double.infinity,
                )
              ],
            ),
            CircleAvatar(
              radius: proifleSize,
              backgroundImage: const AssetImage("lib/asset/image/profile.png"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Tet Davann",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "davanncr@gmail.com",
              style: Theme.of(context).textTheme.displayMedium,
            )
          ],
        ),
      ],
    );
  }
}
