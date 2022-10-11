import 'package:flutter/material.dart';
import 'package:netflics/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
