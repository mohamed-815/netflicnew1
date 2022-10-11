import 'package:flutter/material.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/home/wijet/CustomButton.dart';
import 'package:netflics/presentation/newandhot/widget/videowidjet.dart';

class EveryongWatchingWidjet extends StatelessWidget {
  const EveryongWatchingWidjet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Khieght,
        Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Khieght,
        Text(
            'Landing the lead in the school musical is a dream comr true for jodi, until the pressure sends her confidence-- and her relaationship--into tailospin.',
            style: TextStyle(color: Colors.grey)),
        Khieght,
        Khieght5,
        VideoWidget(),
        Khieght,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonwidjet(
                iconsize: 25, textsize: 12, icon: Icons.share, title: 'share'),
            Kwidth,
            CustomButtonwidjet(
                iconsize: 25,
                textsize: 12,
                icon: Icons.add,
                title: 'Remind me'),
            Kwidth,
            CustomButtonwidjet(
                iconsize: 25,
                textsize: 12,
                icon: Icons.play_arrow,
                title: 'play'),
            Kwidth
          ],
        )
      ],
    );
  }
}
