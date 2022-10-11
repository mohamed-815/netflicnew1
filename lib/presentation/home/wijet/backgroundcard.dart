import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/presentation/home/wijet/CustomButton.dart';

class BackGroundcard extends StatelessWidget {
  const BackGroundcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              color: kbleu,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w440_and_h660_face/m7tG5E1EbywuwTsl6hq990So0Bx.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonwidjet(icon: Icons.add, title: 'My List '),
              _PlayButton(),
              CustomButtonwidjet(icon: Icons.info, title: 'Info'),
            ],
          ),
        )
      ],
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        size: 30,
        color: kblack,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'play',
          style: TextStyle(fontSize: 20, color: kblack),
        ),
      ),
    );
  }
}
