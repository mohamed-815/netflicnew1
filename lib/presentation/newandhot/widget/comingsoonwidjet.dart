import 'package:flutter/material.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/home/wijet/CustomButton.dart';
import 'package:netflics/presentation/newandhot/widget/videowidjet.dart';

class ComingSoonwidjet extends StatelessWidget {
  const ComingSoonwidjet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Feb',
                style: TextStyle(fontSize: 16, color: kgrey),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          color: kblack,
          width: size.width - 50,
          height: 450,
          child: Column(
            children: [
              VideoWidget(),
              Row(
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                        letterSpacing: -2,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CustomButtonwidjet(
                      iconsize: 20,
                      textsize: 10,
                      icon: Icons.all_out_sharp,
                      title: 'Remind me'),
                  Kwidth,
                  CustomButtonwidjet(
                      iconsize: 20,
                      textsize: 10,
                      icon: Icons.info,
                      title: 'Info'),
                  Kwidth,
                ],
              ),
              Khieght,
              Row(
                children: [Text('Coming on Friday')],
              ),
              Khieght,
              Row(
                children: [
                  Text(
                    'Tall Girl 2',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Khieght,
              Text(
                  'Landing the lead in the school musical is a dream comr true for jodi, until the pressure sends her confidence-- and her relaationship--into tailospin.',
                  style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ],
    );
  }
}
