import 'package:flutter/material.dart';
import 'package:islami_application/modules/layout/hadeth/widgets/hadeth_card.dart';

import '../../../core/constants/assets.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.hadethBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(Assets.headerLogo),
            HadethCard(),
            // ListView.separated(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context,index){return HadethCard();},
            //   separatorBuilder: (context,index){return SizedBox(width: 10,);},
            //   itemCount: 44,
            // ),
          ],
        ),
      ),
    );
  }
}
