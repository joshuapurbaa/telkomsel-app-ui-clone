import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class CardInfoHome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17, top: 29, right: 17),
      margin: EdgeInsets.only(top: 18, left: 16, right: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          listCardInfo('assets/icons/icon-phone.png', 'Voice',
              'You have no quota', 'Not yet purchased'),
          SizedBox(
            height: 37,
          ),
          listCardInfo('assets/icons/icon-sms.png', 'SMS', 'You have no quota',
              'Not yet purchased'),
          SizedBox(
            height: 37,
          ),
          listCardInfo('assets/icons/icon-wallet.png', 'Monetary',
              'You have no quota', 'Not yet purchased'),
        ],
      ),
    );
  }

  Widget listCardInfo(String icon, String title, String subtitle, String text) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 36,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: boldText13,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                subtitle,
                style: regularText10,
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          text,
          style: regularText13,
        ),
        Icon(
          Icons.chevron_right,
          color: primaryTextColor,
        ),
      ],
    );
  }
}
