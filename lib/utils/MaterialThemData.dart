import 'package:flutter/material.dart';
import 'GetMaterail.dart';

ThemeData MaterialThemData() {
  return ThemeData(
    primaryColor: MaterialColors.one,
    secondaryHeaderColor: MaterialColors.two,
    hintColor: MaterialColors.four,
    useMaterial3: true,

    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: MaterialColors.two, fontSize: 16),
      labelMedium: TextStyle(color: MaterialColors.three, fontSize: 18),
      labelSmall: TextStyle(color: MaterialColors.three, fontSize: 14),
      bodyLarge: TextStyle(color: MaterialColors.two, fontSize: 30),
      bodySmall: TextStyle(color: MaterialColors.four, fontSize: 14),
      titleMedium: TextStyle(color: MaterialColors.three, fontSize: 16),
      titleSmall: TextStyle(color: MaterialColors.four, fontSize: 15),
      displaySmall: TextStyle(
          color: MaterialColors.one, fontSize: 15, fontWeight: FontWeight.w600),
      displayMedium: TextStyle(
          color: MaterialColors.two, fontSize: 17, fontWeight: FontWeight.w400),
      displayLarge: TextStyle(
          color: MaterialColors.two, fontSize: 18, fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(
          color: MaterialColors.two, fontSize: 17, fontWeight: FontWeight.w400),
      headlineMedium: TextStyle(
          color: MaterialColors.two, fontSize: 22, fontWeight: FontWeight.w500),
      headlineLarge: TextStyle(
        color: MaterialColors.two,
        fontSize: 12,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      selectedItemColor: MaterialColors.one,
      unselectedItemColor: MaterialColors.four,
      selectedLabelStyle: TextStyle(color: MaterialColors.one),
      unselectedLabelStyle: TextStyle(color: MaterialColors.four),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      padding: EdgeInsets.zero,
    ),
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    //scaffoldBackgroundColor: Colors.yellow,
    cardTheme: CardTheme(
        shadowColor: Colors.yellow.withOpacity(0),
        surfaceTintColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
                color: MaterialColors.gray.withOpacity(0.5), width: 1))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: MaterialColors.one,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000)))),
    listTileTheme: const ListTileThemeData(
      tileColor: Colors.transparent,
      titleTextStyle: TextStyle(color: MaterialColors.four, fontSize: 16),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.white),
      //overlayColor: MaterialStateProperty.all(MaterialColors.one.withOpacity(0.5)),
      materialTapTargetSize: MaterialTapTargetSize.values[1],
      trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
    ),
  );
}
