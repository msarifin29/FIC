import 'package:flutter/material.dart';

import 'view/dashboard_page.dart';

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
        useMaterial3: true,
        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: const Color(0xffffffff),
              onPrimary: Colors.white,
            ),
        scaffoldBackgroundColor: const Color(0xfff2f2f2),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline4: TextStyle(
              fontSize: 26.0,
              color: Color(0xff9A9390),
              fontWeight: FontWeight.w500),
          headline5: TextStyle(
              fontSize: 22.0,
              color: Color(0xff4a4543),
              fontWeight: FontWeight.w500),
          headline6: TextStyle(fontSize: 20.0, color: Colors.black),
          subtitle1: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w500),
          subtitle2: TextStyle(fontSize: 14.0, color: Color(0xff7A8D9C)),
          caption: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
              fontSize: 13.0,
              color: Color(0xffADADAD),
              fontWeight: FontWeight.bold),
          bodyText2: TextStyle(
              fontSize: 13.0,
              color: Color(0xffADADAD),
              fontWeight: FontWeight.w400),
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
