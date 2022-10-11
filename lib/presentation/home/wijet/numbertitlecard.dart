import 'package:flutter/material.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/home/wijet/numbercard.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitle.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        MainTitle(
          title: 'Top Ten TV Shows in India Today',
        ),
        Khieght,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                index: index,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
