import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
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
            Container(
              width: 379,
              height: 460,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.allSebhaBody)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 90),
                  Text(
                    'سبحان الله',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      fontFamily: 'Janna',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '30',
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
          ],
        ),
      ),
    );
  }
}
