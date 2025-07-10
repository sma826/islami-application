import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/assets.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.timeBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
