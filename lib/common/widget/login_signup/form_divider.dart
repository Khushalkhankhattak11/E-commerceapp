import 'package:commerceapp/util/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/helper/helpeer.dart';
import '../../../util/constants/text_string.dart';

class TDivider extends StatelessWidget {
  final String dividertext;
  const TDivider({
    super.key,
     required this.dividertext,
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkgrey : TColors.dark,
            thickness: 0.5,
            indent: 20,
            endIndent: 5,
          ),
        ),
        SizedBox(width: TSizes.spacebtwItem),
        Text(dividertext),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkgrey : TColors.dark,
            thickness: 0.5,
            indent: 20,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
