import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/constants.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_list_item.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Suras List', style: Theme.of(context).textTheme.titleLarge),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, index) {
              return SuraListItem(suraDataModel: Constants.suraDataList[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(indent: 40, endIndent: 40);
            },
            itemCount: Constants.suraDataList.length,
          ),
        ],
      ),
    );
  }
}
