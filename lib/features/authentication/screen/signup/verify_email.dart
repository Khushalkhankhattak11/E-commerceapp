import 'package:commerceapp/features/authentication/screen/login/login.dart';
import 'package:commerceapp/features/authentication/screen/signup/success.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:commerceapp/util/constants/image_String.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(TImage.email),
                width: THelperFunction.screenSizewidth() * 0.6,
              ),
              SizedBox(height: TSizes.spacebtwsection),

              /// Title and Subtitle
              Text(
                TTexts.confirmemail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spacebtwItem),
              Text(
                "khushiikhan@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
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
                  onPressed: () {
                    Get.offAll(() => SuccessScreen());
                  },
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
