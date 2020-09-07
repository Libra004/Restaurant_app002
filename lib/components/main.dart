import 'package:flutter/material.dart';
import 'package:retaurant_app_02/scr/screens/home_screen.dart';
import 'components/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(color: ksecondaryColor),
          // ignore: deprecated_member_use
          body2: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
