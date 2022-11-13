import 'package:flutter/material.dart';
import 'package:tugas1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xfff2f2f2),
          backgroundColor: const Color(0xfff2f2f2),
          fontFamily: 'Poppins',
          textTheme: const TextTheme(
            headline5: TextStyle(fontSize: 22.0),
            headline6: TextStyle(fontSize: 20.0),
            subtitle1: TextStyle(fontSize: 16.0),
            subtitle2: TextStyle(fontSize: 14.0),
            caption: TextStyle(fontSize: 12.0, color: Color(0xff4a4543)),
          ),
          iconTheme: const IconThemeData(size: 18, color: Color(0xff4a4543))),
      home: const HomePage(),
    );
  }
}
