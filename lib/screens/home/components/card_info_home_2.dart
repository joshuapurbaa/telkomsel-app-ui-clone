import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class CardInfoHome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listCardInfo(BuildContext context, String icon, String title,
        IconData? iconHelp, String subtitle, String text) {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              icon,
              width: 30,
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: boldText12.copyWith(color: primaryTextColor),
                      ),
                      Icon(iconHelp, size: 15, color: primaryTextColor),
                      Spacer(),
                      Text(
                        text,
                        style: mediumText12.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: primaryTextColor,
                      ),
                    ],
                  ),
                  Text(
                    subtitle,
                    style: mediumText10.copyWith(color: primaryTextColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

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
          listCardInfo(context, 'assets/icons/icon-phone.png', 'Voice', null,
              'You have no quota', 'Not yet purchased'),
          SizedBox(
            height: 37,
          ),
          listCardInfo(context, 'assets/icons/icon-sms.png', 'SMS', null,
              'You have no quota', 'Not yet purchased'),
          SizedBox(
            height: 37,
          ),
          listCardInfo(
              context,
              'assets/icons/icon-wallet.png',
              'Monetary ',
              Icons.help_outline_rounded,
              'You have no monetary balance',
              'Not yet purchased'),
        ],
      ),
    );
  }
}
