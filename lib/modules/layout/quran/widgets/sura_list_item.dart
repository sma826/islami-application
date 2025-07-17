import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';
import 'package:islami_application/models/sura_data_model.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_screen.dart';

class SuraListItem extends StatelessWidget {
  final SuraDataModel suraDataModel;
  final VoidCallback onSuraTab;

  const SuraListItem({
    super.key,
    required this.suraDataModel,
    required this.onSuraTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraScreen.routeName,
          arguments: suraDataModel,
        );
      },
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.suraNumberIcon),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              suraDataModel.suraID,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "${suraDataModel.suraVersesNumbers} Verses",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suraNameAR,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
