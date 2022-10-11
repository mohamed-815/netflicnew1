import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflics/core/colours/colors.dart';
import 'package:netflics/presentation/downloads/widgets/screendownloads.dart';
import 'package:netflics/presentation/fastlaugh/fastlaugh.dart';
import 'package:netflics/presentation/home/homescreen.dart';
import 'package:netflics/presentation/mainpage/wigets/bottomnav.dart';
import 'package:netflics/presentation/newandhot/newandhot.dart';
import 'package:netflics/presentation/search/search.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final pages = [
    HomeScreen(),
    NewAndhot(),
    FastLaugh(),
    Search(),
    Download(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor1,
      body: ValueListenableBuilder(
        valueListenable: indexchange,
        builder: ((context, value, child) {
          return pages[value];
        }),
      ),
      bottomNavigationBar: const BottomNavigationwidget(),
    );
  }
}
