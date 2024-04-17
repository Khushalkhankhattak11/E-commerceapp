import 'package:flutter/material.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.spacebtwsection),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spacebtwfiled),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: TSizes.spacebtwfiled / 2),

            /// Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TTexts.rememberMe),
                  ],
                ),

                /// forget password
                TextButton(
                    onPressed: () {},
                    child: Text(TTexts.forgetpasswordtitle))
              ],
            ),
            const SizedBox(height: TSizes.spacebtwsection),

            /// Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spacebtwItem),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
