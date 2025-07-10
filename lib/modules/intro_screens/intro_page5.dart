import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

class IntroPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.black,
      child: Column(
        spacing: 40,
        children: [
          Image.asset(Assets.introScreen5),
          // SizedBox(height: 50,),
          Text(
            'Holy Quran Radio',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Color(0xFFE2BE7F)),
          ),
          Text(
            '   You can listen to the Holy Quran Radio\nthrough the application for free and easily',
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
