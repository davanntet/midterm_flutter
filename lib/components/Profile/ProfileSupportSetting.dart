import 'package:flutter/material.dart';
import '../../Model/SettingData.dart';
import '../Home/MainTitle.dart';
import '../Template/TemplateSetting.dart';

class ProfileSupportSetting extends StatelessWidget {
  const ProfileSupportSetting({super.key});

  @override
  Widget build(BuildContext context) {
    List<AboutSetting> list = SupportSettings();
    return Column(
      children: [
        const MainTitle(
          title: "Support",
        ),
        ...List.generate(
            list.length,
            (index) => TemplateSetting(
                  setting: list[index],
                ))
      ],
    );
  }
}
