import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:telkomsel/theme.dart';

class CardInfoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
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
                      style: extraBoldText25,
                    ),
                    Text(
                      'Active until 22 Sep 2021',
                      style: lightText12,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
              child: Column(
                children: [
                  infoCardList_1(),
                  Spacer(),
                  infoCardList_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoCardList_1() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: circularProgress(0.0),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Internet',
                    style: boldText12.copyWith(letterSpacing: 0.1),
                  ),
                  Spacer(),
                  Text('Not yet purchased', style: mediumText12),
                  Icon(Icons.chevron_right),
                ],
              ),
              Text(
                'You have no quota',
                style: mediumText10.copyWith(
                    letterSpacing: 0.2, color: primaryTextColor),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget infoCardList_2() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: circularProgress(0.9),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Multimedia',
                    style: boldText12.copyWith(letterSpacing: 0.1),
                  ),
                  Spacer(),
                  Text('9.2GB', style: semiBoldText12),
                  Text(' / 10 GB Left', style: mediumText12),
                  Icon(Icons.chevron_right),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/icon-warning.png', width: 13),
                  Text(
                    ' 9.2 GB / 10 GB is expiring tomorrow',
                    style: mediumText10.copyWith(letterSpacing: 0.2),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget circularProgress(double percent) {
    return CircularPercentIndicator(
      radius: 34.0,
      lineWidth: 7.0,
      animation: true,
      percent: percent,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: orangeColor,
    );
  }
}
