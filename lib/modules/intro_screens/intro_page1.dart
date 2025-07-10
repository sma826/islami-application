import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.black,
      child: Column(
        spacing: 50,
        children: [
          Image.asset(Assets.introScreen1),
          // SizedBox(height: 50,),
          Text(
            'Welcome To Islami App',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Color(0xFFE2BE7F)),
          ),
        ],
      ),
    );
  }
}
