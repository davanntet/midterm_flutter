import 'package:flutter/material.dart';
import '../views/HomePage.dart';
import '../views/Index.dart';
import '../views/LoginPage.dart';
import '../views/SignUPPage.dart';
import '../views/SlashPage.dart';

class RouteProvider {
  static Route<dynamic> CollectRoutes(RouteSettings route) {
    switch (route.name) {
      case 'index':
        {
          return MaterialPageRoute(builder: (_) => const Index());
        }
      case 'login':
        {
          return MaterialPageRoute(builder: (_) => LoginPage());
        }
      case 'signup':
        {
          return MaterialPageRoute(builder: (_) => SignUPPage());
        }
      case 'home':
        {
          return MaterialPageRoute(builder: (_) => const HomePage());
        }
    }
    return MaterialPageRoute(builder: (_) => const SlashPage());
  }
}
