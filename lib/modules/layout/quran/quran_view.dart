import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';
import 'package:islami_application/modules/layout/quran/widgets/recently_sura_widget.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_list_widget.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

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
            RecentlySuraWidget(),
            SuraListWidget(),
          ],
        ),
      ),
    );
  }
}
