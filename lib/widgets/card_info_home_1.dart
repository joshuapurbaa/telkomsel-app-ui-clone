import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class CardInfoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: greyCardColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp 0',
                      style: extraBoldText26,
                    ),
                    Text(
                      'Active until 22 Sep 2021',
                      style: mediumText12,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 19, vertical: 7),
                          decoration: BoxDecoration(
                            color: redButtonColor,
                            borderRadius: BorderRadius.circular(16.5),
                          ),
                          child: Text(
                            'Buy Package',
                            style: mediumText12.copyWith(color: whiteColor),
                          ),
                        ),
                        SizedBox(width: 18),
                        Text(
                          'Top Up',
                          style: mediumText12.copyWith(color: blueColor),
                        ),
                        SizedBox(width: 18),
                        Text(
                          'Send Gift',
                          style: mediumText12.copyWith(color: blueColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircularProgressIndicator(
                        value: 0.9,
                        strokeWidth: 6,
                        color: orangeColor,
                        backgroundColor: greyCardColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
