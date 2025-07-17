import 'package:flutter/material.dart';
import 'package:islami_application/models/sura_data_model.dart';
import 'package:islami_application/modules/layout/quran/widgets/recently_item_widget.dart';

class RecentlySuraWidget extends StatelessWidget {
  final List<SuraDataModel> suraDataModel;

  const RecentlySuraWidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Most Recently',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 155,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return RecentlyItemWidget(
                suraDataModel: suraDataModel[index],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: suraDataModel.length,
          ),
        ),
      ],
    );
  }
}
