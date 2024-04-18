import 'package:commerceapp/common/widget/login_signup/form_divider.dart';
import 'package:commerceapp/common/widget/styles/spacing_style.dart';
import 'package:commerceapp/features/authentication/screen/login/widget/loginform.dart';
import 'package:commerceapp/features/authentication/screen/login/widget/loginheader.dart';
import 'package:commerceapp/util/constants/colors.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:commerceapp/util/constants/image_String.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/login_signup/socialbutton.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ////// Logo  title and sutitle
              TFormHeader(dark: dark),

              /////// Form
              TLoginForm(),

              /// Divider
              TDivider( dividertext: TTexts.signinwith),

              /// Social button
              TSocialButon()
            ],
          ),
        ),
      ),
    );
  }
}

