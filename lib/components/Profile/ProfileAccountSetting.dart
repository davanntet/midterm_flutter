import 'package:flutter/material.dart';
import '../../Model/SettingData.dart';
import '../Home/MainTitle.dart';
import '../Template/TemplateSetting.dart';

class ProfileAccountSetting extends StatelessWidget {
  const ProfileAccountSetting({super.key});
  @override
  Widget build(BuildContext context) {
    List<AboutSetting> list = AccountSettings();
    return Column(
      children: [
        const MainTitle(
          title: "Account Setting",
        ),
        ...List.generate(
            4,
            (index) => TemplateSetting(
                  setting: list[index],
                ))
      ],
    );
  }
}
