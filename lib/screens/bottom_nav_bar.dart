import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telkomsel/theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
              child: SvgPicture.asset(
                'assets/icons/Icon-home.svg',
                color: _selectedIndex == 0 ? redColor : greyColor,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: SvgPicture.asset(
                'assets/icons/trophy.svg',
                width: 21,
                color: _selectedIndex == 1 ? redColor : greyColor,
              ),
            ),
            label: 'POIN',
          ),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  'assets/icons/shopping-cart.svg',
                  width: 21,
                  color: _selectedIndex == 2 ? redColor : greyColor,
                ),
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  'assets/icons/shuttle.svg',
                  width: 21,
                  color: _selectedIndex == 3 ? redColor : greyColor,
                ),
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  width: 21,
                  color: _selectedIndex == 4 ? redColor : greyColor,
                ),
              ),
              label: 'Menu'),
        ],
      ),
    );
  }
}
