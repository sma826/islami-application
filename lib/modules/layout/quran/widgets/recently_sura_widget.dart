import 'package:flutter/material.dart';
import 'package:islami_application/modules/layout/quran/widgets/recently_item_widget.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key});

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
              return RecentlyItemWidget();
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: 44,
          ),
        ),
      ],
    );
  }
}
