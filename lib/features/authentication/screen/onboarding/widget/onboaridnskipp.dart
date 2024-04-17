
import 'package:commerceapp/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:commerceapp/util/constants/devices/devices_utiles.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      right: TSizes.defaultspace,
      child: TextButton(
        onPressed:()=> OnBoardingController.instance.skippage(),
        child: Text(
          'Skip',
        ),
      ),
    );
  }
}
