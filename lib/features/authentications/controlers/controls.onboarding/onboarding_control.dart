import 'package:e_cart/features/authentications/screens/loginScreen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  ///variables
  final PageControllerr = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    PageControllerr.jumpTo(index);
  }

  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }else{
      int page =  currentPageIndex.value + 1;
      PageControllerr.jumpToPage(page);
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    PageControllerr.jumpTo(2);
  }
}