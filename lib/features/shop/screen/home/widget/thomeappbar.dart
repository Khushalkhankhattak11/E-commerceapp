import 'package:flutter/material.dart';

import '../../../../../common/widget/appbar/customappbar.dart';
import '../../../../../common/widget/productcart/cart_menuicon.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTexts.homeAppbarsubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: Colors.white,
                ),
          ),
        ],
      ),
      action: [
        TCartCounterItem(
          onpress: () {},
          iconcolor: Colors.white,
        )
      ],
    );
  }
}
