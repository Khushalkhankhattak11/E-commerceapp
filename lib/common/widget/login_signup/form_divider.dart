import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/text_string.dart';

class TDivider extends StatelessWidget {
  final String dividertext;
  const TDivider({
    super.key,
    required this.dark, required this.dividertext,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkgrey : TColors.dark,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividertext),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkgrey : TColors.dark,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
