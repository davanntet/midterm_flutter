import 'package:flutter/material.dart';
import 'package:midterm_flutter/routes/GenerateRoutes.dart';
import 'package:flutter_midterm/views/SlashPage.dart';

void main(){
  runApp(const RootApp());
}
class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteProvider.CollectRoutes,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch : Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            )
          )
        )
      ),
      home:const SlashPage(),
    );
  }
}