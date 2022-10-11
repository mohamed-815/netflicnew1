import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: 130,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: kcurve,
                    color: Colors.white,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.themoviedb.org/t/p/w440_and_h660_face/u2ghDfjcs3y5c8ata3COc4pWiAN.jpg'))),
              ),
            ),
          ],
        ),
        Positioned(
          left: 12,
          bottom: -30,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 10,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kblack,
                  fontSize: 120,
                  decoration: TextDecoration.none,
                  decorationColor: kblack),
            ),
          ),
        )
      ],
    );
  }
}
