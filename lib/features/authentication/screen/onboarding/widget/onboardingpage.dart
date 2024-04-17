import 'package:flutter/material.dart';

import '../../../../../util/constants/helper/helpeer.dart';
import '../../../../../util/constants/sizes.dart';

class OnBoardingPage extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  const OnBoardingPage({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultspace),
      child: Column(
        children: [
          Image.asset(
            width: THelperFunction.screenSizewidth() * 0.9,
            height: THelperFunction.screenSizeheight() * 0.6,
            img,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spacebtwItem,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
