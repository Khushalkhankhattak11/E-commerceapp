import 'package:commerceapp/features/authentication/screen/signup/verify_email.dart';
import 'package:commerceapp/features/authentication/screen/signup/widget/ttermandcondition.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {

    return Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                SizedBox(width: TSizes.spacebtwfiled),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: TSizes.spacebtwfiled),
            TextFormField(

              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            SizedBox(height: TSizes.spacebtwfiled),
            TextFormField(

              decoration: InputDecoration(
                labelText: TTexts.phone,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),

            SizedBox(height: TSizes.spacebtwfiled),
            TextFormField(

              decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            SizedBox(height: TSizes.spacebtwsection),
            /// Term and Condition
            TTermAndConditionCheck(),


            SizedBox(height: TSizes.spacebtwsection),
            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmail()), child:Text(TTexts.createAccount)),
            ),

          ],
        ));
  }
}

