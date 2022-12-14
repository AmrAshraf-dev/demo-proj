
//part of'OnBoardingImports.dart';
import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/utils/generic_cubit/generic_cubit.dart';

class OnBoardingData{

  GenericBloc<int> pageBloc = GenericBloc(0);
  PageController pageController = PageController();

  void moveNext(int index){
    pageController.animateToPage(index+1, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
  void moveBack(int index){
    pageController.animateToPage(index-1, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
  }
