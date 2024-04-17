import 'package:commerceapp/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/devices/devices_utiles.dart';
import '../../../../../util/constants/helper/helpeer.dart';
import '../../../../../util/constants/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      left: TSizes.defaultspace,
      bottom: TDeviceUtiles.getBottomNavigationbarHeight() + 25,
      child: SmoothPageIndicator(
        controller:controller.pageController,
        onDotClicked: controller.dotNavigationClcik,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
      ),
    );
  }
}
