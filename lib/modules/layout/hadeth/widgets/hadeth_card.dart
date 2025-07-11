import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';
import 'package:islami_application/models/hadeth_data_model.dart';

import '../../../../core/constants/assets.dart';

class HadethCard extends StatefulWidget {

  const HadethCard({super.key, required this.hadethDataModel});

  final HadethDataModel hadethDataModel;

  @override
  State<HadethCard> createState() => _HadethCardState();
}

class _HadethCardState extends State<HadethCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 590,
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(16),
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
          Padding(
            padding: const EdgeInsets.only(
              right: 35,
              left: 35,
              // top:30,
              bottom: 100,
            ),
            child: ListView(
              children: [
                Text(widget.hadethDataModel.hadethTittle,
                  textAlign: TextAlign.center,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 20,),
                Text(widget.hadethDataModel.hadethContent,
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                        color: Colors.black
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

}
