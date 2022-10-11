import 'package:flutter/material.dart';
import 'package:netflics/core/colours/colors.dart';

class CustomButtonwidjet extends StatelessWidget {
  const CustomButtonwidjet({
    this.iconsize = 30,
    this.textsize = 18,
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  final double textsize;
  final double iconsize;

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textsize,
          ),
        )
      ],
    );
  }
}
