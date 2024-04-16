import 'package:commerceapp/common/widget/styles/spacing_style.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:commerceapp/util/constants/image_String.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ////// Logo  title and sutitle
              Column(
                children: [
                  Image(
                    image: AssetImage(
                        dark ? TImage.darkApplogo : TImage.lightApplogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginsubtitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /////// Form
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),
                     const SizedBox(height: TSizes.spacebtwfiled),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
