import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

class IntroPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.black,
      child: Column(
        spacing: 50,
        children: [
          Image.asset(Assets.introScreen4),
          // SizedBox(height: 50,),
          Text(
            'Bearish',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Color(0xFFE2BE7F)),
          ),
          Text(
            'Praise the name of your Lord, the Most\n                                 High',
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
