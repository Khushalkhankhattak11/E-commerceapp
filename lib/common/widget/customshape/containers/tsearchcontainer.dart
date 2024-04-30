import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/devices/devices_utiles.dart';
import '../../../../util/constants/helper/helpeer.dart';
import '../../../../util/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  final String text;
  final IconData? iconData;
  final bool showbackground, showBorder;
  const TSearchContainer({
    super.key,
    required this.text,
    this.iconData = Iconsax.search_normal,
    this.showbackground = true,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultspace),
      child: Container(
        width: TDeviceUtiles.getScreenwidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showbackground
              ? dark
                  ? TColors.dark
                  : TColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardraduislg),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(iconData, color: TColors.grey),
            SizedBox(width: TSizes.spacebtwItem),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
