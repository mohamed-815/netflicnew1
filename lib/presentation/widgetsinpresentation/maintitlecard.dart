import 'package:flutter/material.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/widgetsinpresentation/maincard.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitle.dart';

class MainTitlecard extends StatelessWidget {
  const MainTitlecard({
    required this.title1,
    Key? key,
  }) : super(key: key);
  final String title1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        MainTitle(
          title: title1,
        ),
        Khieght,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainCard(),
            ),
          ),
        )
      ]),
    );
  }
}
