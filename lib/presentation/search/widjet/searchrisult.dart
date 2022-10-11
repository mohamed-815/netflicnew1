import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/search/widjet/tiltle.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitle.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: 'Movie & TV',
        ),
        Khieght,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) => GridItem()),
        ))
      ],
    );
  }
}

class GridItem extends StatelessWidget {
  final gridimage =
      'https://www.themoviedb.org/t/p/w440_and_h660_face/pmAv14TPE2vKMIRrVeCd1Ll7K94.jpg';
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: kwhite,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(gridimage))),
    );
  }
}
