import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflics/core/constant.dart';

class AppBarWidjet extends StatelessWidget {
  AppBarWidjet({super.key, required this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        Kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        Kwidth
      ],
    );
  }
}
