import 'package:commerceapp/common/widget/login_signup/form_divider.dart';
import 'package:commerceapp/common/widget/login_signup/socialbutton.dart';
import 'package:commerceapp/features/authentication/screen/signup/widget/tsignupform.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              //// title text
              Text(
                TTexts.signuptitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spacebtwsection),

              /// Form
              TSignUpForm(),

              SizedBox(height: TSizes.spacebtwsection),
              /// Term and Condition
              TDivider( dividertext: TTexts.signinwith.capitalize!),
              SizedBox(height: TSizes.spacebtwsection),
              /// Social button
              TSocialButon()
            ],
          ),
        ),
      ),
    );
  }
}

