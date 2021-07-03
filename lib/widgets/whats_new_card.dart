import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class WhatsNewCard extends StatelessWidget {
  const WhatsNewCard({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
  }) : super(key: key);

  final String image;
  final String text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 14),
        Image.asset(
          image,
          height: 164,
          width: 281,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.all(
              Radius.circular(19),
            ),
          ),
          child: Text(
            text,
            style: regularText10.copyWith(color: blackColor),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title, style: boldText14),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 35),
          child: Text(
            'See all',
            style: regularText14,
          ),
        ),
      ],
    );
  }
}
