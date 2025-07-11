import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/modules/layout/hadeth/widgets/hadeth_card.dart';

import '../../../core/constants/assets.dart';
import '../../../models/hadeth_data_model.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethDataModel> hadethDataList = [];
  @override
  Widget build(BuildContext context) {
    if (hadethDataList.isEmpty) loadHadethData();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.hadethBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.headerLogo),
          CarouselSlider(
              items: hadethDataList.map((e) {
                return HadethCard(hadethDataModel: e);
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.7,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                // autoPlayInterval: Duration(seconds: 3),
                // autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )
          )
        ],
      ),
    );
  }

  Future <void> loadHadethData() async {
    List<String> hadethContentsList = [];
    List<String> hadethTittlesList = [];

    for (int i = 1; i <= 50; i++) {
      String path = 'assets/Hadeth_files/h$i.txt';
      String content = await rootBundle.loadString(path);

      int indexOfTittle = content.indexOf("\n");
      String hadethTittle = content.substring(0, indexOfTittle);
      String hadethContent = content.substring(indexOfTittle + 1);

      HadethDataModel hadethDataModel = HadethDataModel(
          hadethTittle: hadethTittle,
          hadethContent: hadethContent);

      hadethDataList.add(hadethDataModel);
    }
    setState(() {

    });
  }
}
