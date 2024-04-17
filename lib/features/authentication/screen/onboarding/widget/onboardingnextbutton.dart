import 'package:commerceapp/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../util/constants/devices/devices_utiles.dart';
import '../../../../../util/constants/helper/helpeer.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../controller/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultspace,
      bottom: TDeviceUtiles.getBottomNavigationbarHeight(),
      child: ElevatedButton(
        onPressed:()=> OnBoardingController.instance.nextpage(),
        child: Icon(Iconsax.arrow_right_3),
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? TColors.primaryColor : Colors.black,
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
