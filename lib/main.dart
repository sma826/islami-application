import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/theme_manager.dart';
import 'package:islami_application/modules/layout/hadeth/hadeth_view.dart';
import 'package:islami_application/modules/layout/layout_view.dart';
import 'package:islami_application/modules/layout/quran/widgets/sura_screen.dart';
import 'package:islami_application/modules/splash/splash_view.dart';

import 'modules/intro_screens/intro_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        IntroScreens.routeNames: (context) => IntroScreens(),
        LayoutView.routeName: (context) => LayoutView(),
        SuraScreen.routeName: (context) => SuraScreen(),
        // IntroScreens.routeName: (context)=> IntroScreens(),
      },
      // home: IntroScreens(),
    );
  }
}
