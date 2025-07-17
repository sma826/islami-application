import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';

class SebhaView extends StatefulWidget {

  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> sebhaTextList = [
    "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ لِلَّهِ",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ",
    "أستغفر الله",
    "الْلَّهُ أَكْبَرُ ",
  ];

  int currentIndex = 0;

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    // sebhaCounter(sebhaTextList);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.sebhaBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(Assets.headerLogo),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    fontFamily: 'Janna',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: sebhaCounter,
              child: Container(
                width: 379,
                height: 460,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.allSebhaBody)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 90),

                      Text(
                        sebhaTextList[currentIndex],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Janna',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        counter.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          fontFamily: 'Janna',
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sebhaCounter() {
    if (counter < 30) {
      counter++;
    }
    else {
      counter = 1;
      currentIndex = (currentIndex + 1) % sebhaTextList.length;
    }
    setState(() {});
  }
}
