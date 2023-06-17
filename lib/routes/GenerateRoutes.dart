

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midterm/views/HomePage.dart';

import '../views/LoginPage.dart';
import '../views/SlashPage.dart';


class RouteProvider {
  static Route<dynamic> CollectRoutes(RouteSettings route){
  switch(route.name){
    case 'login':{
      return MaterialPageRoute(builder: (_)=>const LoginPage());
    }
    case 'home':{
      return MaterialPageRoute(builder: (_)=>const HomePage());
    }
  }
  return MaterialPageRoute(builder: (_)=>const SlashPage());
}
}