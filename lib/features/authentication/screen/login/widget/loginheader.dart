import 'package:flutter/material.dart';

import '../../../../../util/constants/image_String.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_string.dart';

class TFormHeader extends StatelessWidget {
  const TFormHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image(
            image: AssetImage(
              dark ? TImage.darkApplogo : TImage.lightApplogo,
            ),
            height: 150,
          ),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginsubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
