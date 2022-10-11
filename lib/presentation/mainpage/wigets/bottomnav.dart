import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier<int> indexchange = ValueNotifier(0);

class BottomNavigationwidget extends StatelessWidget {
  const BottomNavigationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchange,
        builder: ((context, int value, _) {
          return BottomNavigationBar(
              currentIndex: value,
              onTap: (index) {
                indexchange.value = index;
              },
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_off_rounded), label: 'search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: 'Downloads ')
              ]);
        }));
  }
}
