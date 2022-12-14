//part of 'OnBoardingWidgetsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jawab_demo/general/Screens/Login/login.dart';
import 'package:jawab_demo/general/constants/MyColors.dart';
import 'package:jawab_demo/general/on_boarding/OnBoardingData.dart';
import 'package:jawab_demo/general/widgets/MyText.dart';
import 'package:jawab_demo/res.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tf_custom_widgets/utils/generic_cubit/generic_cubit.dart';

class ThirdOnBoardingScreen extends StatelessWidget {
  ThirdOnBoardingScreen({Key? key, this.onBoardingData}) : super(key: key);
  final OnBoardingData? onBoardingData;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            Res.logo,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 22,
            ),
            MyText(
              title: 'مرحبا بك في الاسكرين الثالثة',
              size: 20,
              color: MyColors.black,
              fontWeight: FontWeight.w600,
              alien: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: MyText(
                title: 'مرحبا بك في الاسكرين الثالثة وصف',
                size: 16,
                color: MyColors.black,
                alien: TextAlign.center,
              ),
            ),
            // BlocBuilder<GenericBloc<int>, GenericState<int>>(
            //   bloc: onBoardingData?.pageBloc,
            //   builder: (context, state) {
            //     return Container(
            //       margin: EdgeInsets.symmetric(horizontal: 10),
            //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //       color: MyColors.white,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               InkWell(
            //                 onTap: () => onBoardingData!.moveBack(state.data),
            //                 child: Container(
            //                   margin: EdgeInsets.symmetric(
            //                       horizontal: 20, vertical: 10),
            //                   alignment: Alignment.center,
            //                   width: 50,
            //                   height: 50,
            //                   decoration: BoxDecoration(
            //                     color: MyColors.primary,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: Icon(
            //                     Icons.arrow_back,
            //                     color: MyColors.white,
            //                   ),
            //                 ),
            //               ),
            //               SmoothPageIndicator(
            //                 controller: onBoardingData!.pageController,
            //                 count: 3,
            //                 effect: WormEffect(
            //                     activeDotColor: MyColors.primary,
            //                     dotWidth: 10,
            //                     dotHeight: 10,
            //                     dotColor: Colors.grey,
            //                     spacing: 10), // your preferred effect
            //               ),
            //               InkWell(
            //                 onTap: () => onBoardingData!.moveNext(state.data),
            //                 child: Container(
            //                   margin: EdgeInsets.symmetric(
            //                       horizontal: 20, vertical: 10),
            //                   alignment: Alignment.center,
            //                   width: 50,
            //                   height: 50,
            //                   decoration: BoxDecoration(
            //                     color: MyColors.primary,
            //                     shape: BoxShape.circle,
            //                   ),
            //                   child: Icon(
            //                     Icons.arrow_forward,
            //                     color: MyColors.white,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     );
            //   },
            // ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) =>
                          Login())), //AutoRouter.of(context).push(Login()),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: MyText(
                  title: "تخطي",
                  size: 14.0,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffabadac),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
