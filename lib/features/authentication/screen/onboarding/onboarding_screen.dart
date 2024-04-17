import 'package:commerceapp/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:commerceapp/features/authentication/screen/onboarding/widget/onboardingdotnavigation.dart';
import 'package:commerceapp/features/authentication/screen/onboarding/widget/onboardingnextbutton.dart';
import 'package:commerceapp/features/authentication/screen/onboarding/widget/onboardingpage.dart';
import 'package:commerceapp/features/authentication/screen/onboarding/widget/onboaridnskipp.dart';
import 'package:commerceapp/util/constants/image_String.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //// horizational scroll view page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                img: TImage.onBoardingimage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                img: TImage.onBoardingimage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                img: TImage.onBoardingimage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //// skip button
          OnBoardingSkip(),

          //// smooth page controller
          OnBoardingDotNavigation(),
          //// Circular button

          OnBoardingNextButton()
        ],
      ),
    );
  }
}
