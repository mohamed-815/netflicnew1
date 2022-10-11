import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/search/widjet/tiltle.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitle.dart';

class SearchidlScreen extends StatelessWidget {
  const SearchidlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Top Searches',
        ),
        Khieght,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return SearchItem();
              }),
              separatorBuilder: ((context, index) => Khieght),
              itemCount: 10),
        )
      ],
    );
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});
  final imageurl =
      'https://www.themoviedb.org/t/p/w500_and_h282_face/oqkbIfxOFFncu1aBBEOZung3Pmp.jpg';
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 65,
          width: screenwidth * .35,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        Kwidth,
        const Expanded(
            child: Text(
          'moovie name',
          style: TextStyle(
              color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
        )),
        CircleAvatar(
          backgroundColor: kwhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
