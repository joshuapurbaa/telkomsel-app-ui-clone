import 'package:flutter/material.dart';
import 'package:telkomsel/screens/explore/explore_page.dart';
import 'package:telkomsel/screens/home/home_page.dart';
import 'package:telkomsel/screens/menu/menu_page.dart';
import 'package:telkomsel/screens/poin/poin_page.dart';
import 'package:telkomsel/screens/shop/shop_page.dart';
import 'package:telkomsel/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    PoinPage(),
    ShopPage(),
    ExplorePage(),
    MenuPage(),
  ];

  Widget customNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (i) => setState(() => _selectedIndex = i),
      selectedLabelStyle: bottomNavText,
      unselectedLabelStyle: bottomNavText,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Image.asset(
              'assets/icons/Icon-home.png',
              width: 18,
              color: _selectedIndex == 0 ? redColor : greyColor,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Image.asset(
              'assets/icons/icon-trophy.png',
              width: 18,
              color: _selectedIndex == 1 ? redColor : greyColor,
            ),
          ),
          label: 'POIN',
        ),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-shop-cart.png',
                width: 18,
                color: _selectedIndex == 2 ? redColor : greyColor,
              ),
            ),
            label: 'Shop'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-explore.png',
                width: 18,
                color: _selectedIndex == 3 ? redColor : greyColor,
              ),
            ),
            label: 'Explore'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/icons/icon-menu.png',
                width: 18,
                color: _selectedIndex == 4 ? redColor : greyColor,
              ),
            ),
            label: 'Menu'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customNavBar(),
      body: Stack(
        children: _screens
            .asMap()
            .map(
              (i, screen) => MapEntry(
                i,
                Offstage(offstage: _selectedIndex != i, child: screen),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
