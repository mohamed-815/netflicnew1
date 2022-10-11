import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/core/constant.dart';
import 'package:netflics/presentation/home/wijet/CustomButton.dart';
import 'package:netflics/presentation/newandhot/widget/comingsoonwidjet.dart';
import 'package:netflics/presentation/newandhot/widget/everyoungwatchingwidjet.dart';
import 'package:netflics/presentation/newandhot/widget/videowidjet.dart';
import 'package:netflics/presentation/widgetsinpresentation/appbar.dart';

class NewAndhot extends StatelessWidget {
  const NewAndhot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: Text(
                '     New & Hot',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              actions: [
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
              bottom: TabBar(
                  labelColor: kblack,
                  unselectedLabelColor: kwhite,
                  indicator: BoxDecoration(
                      color: Colors.white, borderRadius: kcurve30),
                  tabs: [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    )
                  ]),
            )),
        body: TabBarView(
            children: [buildComingsoon(context), buideveryongWatching()]),
      ),
    );
    ;
  }

  buildComingsoon(context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const ComingSoonwidjet();
      }),
      // shrinkWrap: true,
      // children: [

      // ],
    );
  }

  buideveryongWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => EveryongWatchingWidjet()));
  }
}
