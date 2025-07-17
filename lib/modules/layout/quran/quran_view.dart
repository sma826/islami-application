import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';
import 'package:islami_application/core/constants/constants.dart';
import 'package:islami_application/core/services/local_storage_keys.dart';
import 'package:islami_application/core/services/local_storage_services.dart';
import 'package:islami_application/models/sura_data_model.dart';
import 'package:islami_application/modules/layout/quran/widgets/recently_sura_widget.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_list_widget.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_screen.dart';

class QuranView extends StatefulWidget {
  QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  void initState() {
    localRecentData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          spacing: 21,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Assets.headerLogo,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: ColorPallete.primaryColor,
                decoration: InputDecoration(
                  hintText: 'Sura Name',
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  filled: true,
                  fillColor: Colors.black38,
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(16),
                  //   borderSide: BorderSide(
                  //     color: ColorPallete.primaryColor,
                  //   )
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorPallete.primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorPallete.primaryColor),
                  ),
                  prefixIcon: ImageIcon(
                    AssetImage(Assets.quranIcon),
                    color: ColorPallete.primaryColor,
                  ),
                ),
              ),
            ),
            recentSuraList.isNotEmpty
                ? RecentlySuraWidget(suraDataModel: recentSuraList)
                : Center(
                  child: Text(
                    'No Recent Sura',
                    style: TextStyle(
                      color: ColorPallete.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            SuraListWidget(onSuraTap: onSuraTap),
          ]],
        ),
      ),
    );
  }

  List<String> recentSuraIndexList = [];

  List<SuraDataModel> recentSuraList = [];

  onSuraTap(int index) {
    recentSuraIndexList.add(index.toString());
    LocalStorageServices.setStringList(
        LocalStorageKeys.recentSuras, recentSuraIndexList);
    Navigator.pushNamed(
      context,
      SuraScreen.routeName,
      arguments: Constants.suraDataList[index],
    );
  }

  localRecentData() {
    recentSuraIndexList =
        LocalStorageServices.getStringList(LocalStorageKeys.recentSuras) ?? [];
    for (var index in recentSuraIndexList) {
      int indexInt = int.parse(index);
      recentSuraList.add(Constants.suraDataList[indexInt]);
    }
  }
}
