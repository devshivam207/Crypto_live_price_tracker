import 'package:flutter/material.dart';
import 'package:pricelive/loginpage.dart';
import 'package:pricelive/profilepage.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => MyLoginPage(),
        "/home": (context) => MyHomePage(),
        "/profile": (context) => ProfilePage(),
        "/login": (context) => MyLoginPage(),
      },
    );
  }
}
