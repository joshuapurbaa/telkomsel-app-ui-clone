import 'package:flutter/material.dart';
import 'package:telkomsel/screens/home_page.dart';
import 'package:telkomsel/theme.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 28),
      height: 131,
      width: 284,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(14),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: greyColor,
            blurRadius: 1,
          )
        ],
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              height: 20,
              width: 96,
              decoration: BoxDecoration(
                color: bluePurpleColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                ),
              ),
            ),
          ),
          Positioned(
            top: 27,
            left: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kuota Ketengan Unli...',
                  style: mediumText12.copyWith(letterSpacing: 0.3),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('29 Jun 2021 13:08:07',
                    style: mediumText15.copyWith(letterSpacing: 0.2)),
                SizedBox(
                  height: 15,
                ),
                Text('Rp 4,200',
                    style: boldText14.copyWith(
                        letterSpacing: 0.2, color: redColor)),
              ],
            ),
          ),
          Positioned(
            top: 7,
            right: 7,
            child: Image.asset('assets/icons/Icon-box-play.png', width: 45),
          ),
        ],
      ),
    );
  }
}
