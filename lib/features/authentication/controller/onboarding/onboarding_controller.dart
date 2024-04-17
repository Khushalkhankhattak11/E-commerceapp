import 'package:commerceapp/features/authentication/screen/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //// update current index when the page is scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  ////jump to specfic dot selected page

  void dotNavigationClcik(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update the current page and jump to next page
  void nextpage() {
    if(currentPageIndex.value ==2){
       Get.offAll(()=>LoginScreen());
    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  /// update the current page and jump to last page
  void skippage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
