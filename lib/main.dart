import 'package:coffe_shop/home.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:coffe_shop/coffee_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Tajawal',
      ),
      home: LoginScreen(),
    );
  }
}
