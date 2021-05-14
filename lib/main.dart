import 'package:flutter/material.dart';
import 'package:myportfolio/Views/SplashScreenScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raghav Talwar',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      home: SplashScreenScreen(),
    );
  }
}
