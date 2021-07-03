import 'package:flutter/material.dart';
import 'package:telkomsel/theme.dart';

class WhatsNewCard extends StatelessWidget {
  const WhatsNewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 28),
        height: 163,
        width: 281,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(14),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 11, right: 9),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Paket Internet Puas Nonton\nVideo Berlangganan',
                style: boldText14.copyWith(color: whiteColor),
                textAlign: TextAlign.center,
              ),
              Image.asset('assets/images/video-subscription.png'),
            ],
          ),
        ));
  }
}
