import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

import '../../../../core/constants/assets.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 590,
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Image.asset(Assets.hadethCardBG),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.leftCorner),
                    Image.asset(Assets.rightCorner),
                  ],
                ),
                Image.asset(Assets.hadethCardBottom),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
