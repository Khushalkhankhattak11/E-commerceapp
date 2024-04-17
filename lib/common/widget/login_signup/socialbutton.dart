import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_String.dart';
import '../../../util/constants/sizes.dart';

class TSocialButon extends StatelessWidget {
  const TSocialButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: 80,
              height: 80,
              image: AssetImage(TImage.google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spacebtwItem),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: TColors.grey,
              ),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: 80,
              height: 80,
              image: AssetImage(TImage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
