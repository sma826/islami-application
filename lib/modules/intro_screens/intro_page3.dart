import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.black,
      child: Column(
        spacing: 40,
        children: [
          Image.asset(Assets.introScreen3),
          // SizedBox(height: 50,),
          Text(
            'Reading the Quran',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Color(0xFFE2BE7F)),
          ),
          Text(
            'Read, and your Lord is the Most Generous',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Color(0xFFE2BE7F),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
