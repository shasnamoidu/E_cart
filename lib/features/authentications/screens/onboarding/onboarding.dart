import 'package:e_cart/features/authentications/controlers/controls.onboarding/onboarding_control.dart';
import 'package:e_cart/features/authentications/screens/onboarding/onboarding_page.dart';
import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/image_string.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/constants/text_string.dart';
import 'package:e_cart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.PageControllerr,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onboardingPage(
                  image: Imagess.searching,
                  title: Textss.onBoardingTitle1,
                  subTitle: Textss.onBoardingSubTitle1),
              onboardingPage(
                  image: Imagess.shopping,
                  title: Textss.onBoardingTitle2,
                  subTitle: Textss.onBoardingSubTitle2),
              onboardingPage(
                  image: Imagess.delivering,
                  title: Textss.onBoardingTitle3,
                  subTitle: Textss.onBoardingSubTitle3),
            ],
          ),

          //skip button
          Positioned(
              top: DeviceUtilss.getAppBarHeight(),
              right: Sizess.defaultSpace,
              child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: Text('Skip'))),

          // dot navigation smoothindicator
           Positioned(
          bottom: DeviceUtilss.getBottomNavigationBarHeight() +25 ,left: Sizess.defaultSpace,
            child: SmoothPageIndicator(
              controller: controller.PageControllerr, 
               count: 3,
               onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(activeDotColor: Colorss.dark, dotHeight: 5),
            )),

            //circular button
            Positioned(
              bottom: DeviceUtilss.getBottomNavigationBarHeight(), right: Sizess.defaultSpace,
              child: ElevatedButton(onPressed: () => OnboardingController.instance.nextPage(), 
              style: ElevatedButton.styleFrom(shape: const CircleBorder(),),
              child: const Icon(Icons.arrow_right)))
        ],
      ),
    );
  }
}
