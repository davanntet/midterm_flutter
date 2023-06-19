import 'package:flutter/material.dart';
import '../utils/GetMaterail.dart';

List<AboutSetting> AccountSettings() {
  List<AboutSetting> list = [];
  list.add(AboutSetting(
      title: "Edit Profile",
      icon: "lib/asset/icon/edit.png",
      color: MaterialColors.orange));
  list.add(AboutSetting(
      title: "Payment",
      icon: "lib/asset/icon/payment.png",
      color: MaterialColors.blue));
  list.add(AboutSetting(
      title: "Notification",
      icon: "lib/asset/icon/edit.png",
      type: SettingType.TurnON,
      color: MaterialColors.red));
  list.add(AboutSetting(
      title: "Language",
      icon: "lib/asset/icon/lang.png",
      type: SettingType.HaveTitle,
      color: MaterialColors.green,
      subtitle: 'English'));
  return list;
}

List<AboutSetting> SupportSettings() {
  List<AboutSetting> list = [];
  list.add(AboutSetting(
      title: "Message",
      icon: "lib/asset/icon/sms.png",
      color: MaterialColors.red));
  list.add(AboutSetting(
      title: "Give US Feedback",
      icon: "lib/asset/icon/feedback.png",
      color: MaterialColors.orange));
  list.add(AboutSetting(
      title: "Terms of Service",
      icon: "lib/asset/icon/term.png",
      color: MaterialColors.blue));
  list.add(AboutSetting(
      title: "About US",
      icon: "lib/asset/icon/about.png",
      color: MaterialColors.green));
  list.add(AboutSetting(
      title: "Log Out",
      icon: "lib/asset/icon/about.logout",
      color: MaterialColors.orange));
  return list;
}

class SettingType {
  static String TurnON = "TurnON";
  static String HaveTitle = "HaveChildren";
  static String Normal = "Normal";
}

class AboutSetting {
  AboutSetting(
      {required this.title,
      required this.icon,
      this.type = "Normal",
      required this.color,
      this.subtitle});
  final String title;
  final String icon;
  final String type;
  final Color color;
  final String? subtitle;
}
