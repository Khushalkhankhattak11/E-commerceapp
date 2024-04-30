import 'package:commerceapp/common/widget/styles/spacing_style.dart';
import 'package:flutter/material.dart';

import '../../../../util/constants/helper/helpeer.dart';
import '../../../../util/constants/image_String.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_string.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(TImage.success),
                width: THelperFunction.screenSizewidth() * 0.6,
              ),
              SizedBox(height: TSizes.spacebtwsection),

              /// Title and Subtitle
              Text(
                TTexts.youraccountCreatetitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spacebtwItem),

              Text(
                TTexts.confirmemailtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spacebtwsection),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(TTexts.tContiune),
                ),
              ),
              SizedBox(height: TSizes.spacebtwItem),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TTexts.resend),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
