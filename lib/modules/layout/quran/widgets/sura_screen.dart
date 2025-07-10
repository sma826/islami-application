import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';

import '../../../../core/constants/assets.dart';
import '../../../../models/sura_data_model.dart';

class SuraScreen extends StatefulWidget {
  static const String routeName = "/sura_screen";

  const SuraScreen({super.key});

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;

    if (versesList.isEmpty) loadDataFromAsset(data.suraID);

    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(
        backgroundColor: Color(0xFF202020),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: ColorPallete.primaryColor),
        ),
        title: Text(
          data.suraNameEN,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: ColorPallete.primaryColor),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.leftCornerYellow),
                    Image.asset(Assets.rightCornerYellow),
                  ],
                ),
              ),
              Image.asset(Assets.suraScreenBottom),
            ],
          ),
          Padding(
            // padding: const EdgeInsets.only(
            //   top: 20,
            //   left: 20,
            //   right: 20,
            //   bottom: 100
            // ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  data.suraNameAR,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: ColorPallete.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Text(
                        "${versesList[index]} [${index + 1}]",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: ColorPallete.primaryColor,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 4);
                    },
                    itemCount: versesList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadDataFromAsset(String suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");

    versesList = content.split("\n");

    setState(() {});

    print(versesList.length);
    print(content);
  }
}
