import 'package:flutter/material.dart';
import 'package:islami_application/modules/layout/hadeth/hadeth_view.dart';
import 'package:islami_application/modules/layout/quran/quran_view.dart';
import 'package:islami_application/modules/layout/radio/radio_view.dart';
import 'package:islami_application/modules/layout/sebha/sebha_view.dart';
import 'package:islami_application/modules/layout/time/time_view.dart';

import '../../core/constants/assets.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranIcon)),
            label: 'Quran',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.hadethIcon)),
            label: 'Hadeth',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.hadethIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.sebhaIcon)),
            label: 'Sebha',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.sebhaIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.radioIcon)),
            label: 'Radio',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.radioIcon)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.timeIcon)),
            label: 'Time',
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.timeIcon)),
            ),
          ),
        ],
      ),
    );
  }
}
