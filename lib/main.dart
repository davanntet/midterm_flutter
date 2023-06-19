import 'package:flutter/material.dart';
import 'routes/GenerateRoutes.dart';
import 'utils/MaterialThemData.dart';
import 'views/SlashPage.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteProvider.CollectRoutes,
      theme: MaterialThemData(),
      home: const SlashPage(),
    );
  }
}
