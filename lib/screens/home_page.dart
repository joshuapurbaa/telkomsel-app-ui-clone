import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';
import 'package:telkomsel/widgets/card_info_home_1.dart';
import 'package:telkomsel/widgets/card_info_home_2.dart';
import 'package:telkomsel/widgets/recommended_card.dart';
import 'package:telkomsel/widgets/whats_new_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cards = [
    CardInfoHome(),
    CardInfoHome2(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget headerContent(String icon, String text) {
      return Container(
        margin: EdgeInsets.only(top: 15, right: 10),
        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 11),
        decoration: BoxDecoration(
          color: darkRedColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: whiteBoldText13,
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: whiteColor,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Hi Bambang',
                  style: whiteBoldText15,
                ),
                Spacer(),
                Icon(
                  Icons.qr_code_rounded,
                  size: 28,
                  color: whiteColor,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  'assets/icons/icon-email.png',
                  width: 32,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  'assets/icons/icon-help.png',
                  width: 32,
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  '082212345678',
                  style: whiteBoldText15,
                ),
                SizedBox(
                  width: 7,
                ),
                Image.asset(
                  'assets/icons/icon-add.png',
                  width: 14,
                ),
              ],
            ),
            Row(
              children: [
                headerContent('assets/icons/icon-love.png', '19 POIN'),
                headerContent('assets/icons/icon-star.png', 'Daily Check In'),
              ],
            )
          ],
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 18 : 5,
        height: 5,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index
                ? whiteColor
                : whiteColor.withOpacity(0.7)),
      );
    }

    Widget cardInfo() {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
              items: cards
                  .map<Widget>((card) => SizedBox(
                        width: 380,
                        child: card,
                      ))
                  .toList(),
              options: CarouselOptions(
                  viewportFraction: 1,
                  height: 320,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards.map((e) {
              index += 1;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget contentRecommended() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 17, top: 45, right: 17),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Recomended for you', style: nunitoExtraBoldText18),
                Spacer(),
                Text('See all', style: regularText12),
              ],
            ),
            RecomendedCard(),
            Row(
              children: [
                Text('What\'s new ?', style: nunitoExtraBoldText18),
              ],
            ),
            WhatsNewCard(),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            stops: [0.1, 0.8, 1],
            colors: [redColor, redColor, yellowColor],
          ),
        ),
        child: ListView(
          children: [
            header(),
            cardInfo(),
            contentRecommended(),
          ],
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.width);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
