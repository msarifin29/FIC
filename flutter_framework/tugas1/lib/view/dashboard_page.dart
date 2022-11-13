import 'package:flutter/material.dart';
import 'package:tugas1/view/account_page.dart';
import 'package:tugas1/view/favorite_page.dart';
import 'package:tugas1/view/home_page.dart';
import 'package:tugas1/view/shopping_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectIndex = 0;
  List<Widget> _screen = [
    const HomePage(),
    const ShoppingPage(),
    const FavoritePage(),
    const AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: _screen[_selectIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectIndex,
        unselectedItemColor: const Color(0xff9a9390).withOpacity(0.3),
        selectedItemColor: const Color(0xffBBBBBB),
        iconSize: 26,
        selectedFontSize: 20,
        unselectedFontSize: 18,
        backgroundColor: Colors.white,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_outline),
              activeIcon: Icon(Icons.star),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: ""),
        ],
      ),
    );
  }
}
