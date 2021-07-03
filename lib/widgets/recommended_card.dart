import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
    required this.title,
    required this.time,
    required this.price,
  }) : super(key: key);

  final String title;
  final String time;
  final String price;

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
              padding: EdgeInsets.only(left: 11, top: 2),
              height: 20,
              width: 96,
              decoration: BoxDecoration(
                color: bluePurpleColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                ),
              ),
              child: Text(
                'Buy it again',
                style: mediumText9,
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
                  title,
                  style: mediumText12.copyWith(letterSpacing: 0.3),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(time, style: mediumText15.copyWith(letterSpacing: 0.2)),
                SizedBox(
                  height: 15,
                ),
                Text(price,
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

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(size.width - 10, size.height, size.width, 0);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
