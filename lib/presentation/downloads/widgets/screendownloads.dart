import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';

import 'package:netflics/presentation/widgetsinpresentation/appbar.dart';

class Download extends StatelessWidget {
  Download({super.key});

  final widjetlist = [SmartDownloads(), Khieght, Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              AppBarWidjet(
                title: 'Download',
              )
            ])),
        body: ListView.builder(
            itemCount: widjetlist.length,
            itemBuilder: (context, index) {
              return widjetlist[index];
            }));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageslist = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/tLFIMuPWJHlTJ6TN8HCOiSD6SdA.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/jOgbnL5FB30pprEjZaY1E1iPtPM.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Indroducing Downloads For you',
          style: TextStyle(
              color: kwhite, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Khieght,
        Text(
          textAlign: TextAlign.center,
          'we will download a personalized selection of \n movies and shows for you so there is \n allways something to watch on your\n  device',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Khieght,
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.5),
                radius: size.width * .4,
              )),
              dowloadsimagewidget(
                  size1: Size(size.width * .4, size.width * .58),
                  angle: 20,
                  imageslist: imageslist[0],
                  margin: EdgeInsets.only(left: 170, bottom: 50, top: 3)),
              dowloadsimagewidget(
                  size1: Size(size.width * .4, size.width * .58),
                  angle: -20,
                  imageslist: imageslist[1],
                  margin: EdgeInsets.only(right: 170, bottom: 50, top: 3)),
              dowloadsimagewidget(
                  size1: Size(size.width * .45, size.width * .65),
                  imageslist: imageslist[0],
                  margin: EdgeInsets.only(top: 3))
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        MaterialButton(
          minWidth: size.width * .9,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          color: kbleu,
          child: Text(
            'setup',
            style: TextStyle(
                color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        MaterialButton(
          minWidth: size.width * .7,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          color: kwhite,
          child: Text(
            'See what you can download',
            style: TextStyle(
                color: kblack, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        Kwidth,
        Text('Smart Downloads'),
        Kwidth
      ],
    );
  }
}

class dowloadsimagewidget extends StatelessWidget {
  const dowloadsimagewidget(
      {Key? key,
      required this.imageslist,
      required this.size1,
      this.angle = 0,
      required this.margin})
      : super(key: key);

  final String imageslist;
  final double angle;
  final EdgeInsets margin;
  final Size? size1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size1!.width,
        height: size1!.height,
        decoration: BoxDecoration(
            color: kblack,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageslist))),
      ),
    );
  }
}
