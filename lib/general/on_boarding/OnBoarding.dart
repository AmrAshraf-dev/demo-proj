//part of 'OnBoardingWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:jawab_demo/general/on_boarding/OnBoardingData.dart';
import 'package:jawab_demo/general/on_boarding/Widgets/FisrtOnBoardingScreen.dart';
import 'package:jawab_demo/general/on_boarding/Widgets/SecondOnBoardingScreen.dart';
import 'package:jawab_demo/general/on_boarding/Widgets/ThirdOnBoardingScreen.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  final OnBoardingData onBoardingData = OnBoardingData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: onBoardingData.pageController,
              onPageChanged: onBoardingData.pageBloc.onUpdateData,
              children: [
                ThirdOnBoardingScreen(),
                SecondOnBoardingScreen(),
                FirstOnBoardingScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
