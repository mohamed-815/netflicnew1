import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/home/wijet/CustomButton.dart';
import 'package:netflics/presentation/home/wijet/backgroundcard.dart';
import 'package:netflics/presentation/home/wijet/numbercard.dart';
import 'package:netflics/presentation/home/wijet/numbertitlecard.dart';
import 'package:netflics/presentation/widgetsinpresentation/maincard.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitle.dart';
import 'package:netflics/presentation/widgetsinpresentation/maintitlecard.dart';

ValueNotifier<bool> ScrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: ScrollNotifier,
        builder: (BuildContext context, dynamic value, _) {
          return SafeArea(
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;

                if (direction == ScrollDirection.reverse) {
                  ScrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  ScrollNotifier.value = true;
                }

                return true;
              },
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        BackGroundcard(),
                        MainTitlecard(
                          title1: 'Released in the past year',
                        ),
                        Khieght,
                        MainTitlecard(
                          title1: 'Trending Now',
                        ),
                        Khieght,
                        NumberTitleCard(),
                        Khieght,
                        MainTitlecard(
                          title1: 'Tense Dramas',
                        ),
                        Khieght,
                        MainTitlecard(
                          title1: 'South indian Cenema',
                        ),
                        Khieght,
                      ],
                    ),
                  ),
                  ScrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(microseconds: 1000),
                          width: double.infinity,
                          height: 80,
                          color: Colors.black.withOpacity(.3),
                          child: Column(children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://pbs.twimg.com/profile_images/1401966376172933123/Pp017vXg_400x400.jpg',
                                  height: 50,
                                  width: 50,
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
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Tv Show', style: ktextstyle),
                                Text(
                                  'Movies',
                                  style: ktextstyle,
                                ),
                                Text(
                                  'Categories',
                                  style: ktextstyle,
                                )
                              ],
                            )
                          ]),
                        )
                      : Khieght
                ],
              ),
            ),
          );
          ;
        },
      ),
    );
  }
}
