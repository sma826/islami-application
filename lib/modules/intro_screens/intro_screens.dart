import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/colors_pallete.dart';
import 'package:islami_application/core/constants/theme_manager.dart';
import 'package:islami_application/modules/intro_screens/intro_page1.dart';
import 'package:islami_application/modules/intro_screens/intro_page2.dart';
import 'package:islami_application/modules/layout/layout_view.dart';
import 'package:islami_application/modules/layout/quran/quran_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page3.dart';
import 'intro_page4.dart';
import 'intro_page5.dart';

class IntroScreens extends StatefulWidget {
  static var routeNames = '/introscreens';

  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  // static const String routeName = '/introscreens';
  PageController _controller = PageController();
  bool onLastPage = false;

  bool onFirstPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 4);
                onFirstPage = (index == 0);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
              IntroPage5(),
            ],
          ),
          Container(
            alignment: Alignment(0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                onFirstPage
                    ? Text('Back', style: TextStyle(color: Colors.black))
                    : TextButton(
                      onPressed: () {},
                      child: GestureDetector(
                        onTap: () {
                          _controller.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Back',
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: ColorPallete.primaryColor),
                        ),
                      ),
                    ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: WormEffect(activeDotColor: ColorPallete.primaryColor),
                ),

                onLastPage
                    ? TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          LayoutView.routeName,
                        );
                      },
                      child: Text(
                        'Finish',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorPallete.primaryColor,
                        ),
                      ),
                    )
                    : TextButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'Next',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorPallete.primaryColor,
                        ),
                      ),
                    ),

                //     ) : Text('Next',
                //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //           color: ColorPallete.primaryColor
                //       ),
                //     ),
                //     )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
