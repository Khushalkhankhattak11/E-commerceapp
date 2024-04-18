import 'package:commerceapp/util/constants/colors.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:commerceapp/util/constants/text_string.dart';
import 'package:flutter/material.dart';


class TTermAndConditionCheck extends StatelessWidget {
  const TTermAndConditionCheck({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value){},)),

        SizedBox(width: 5),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: '${TTexts.isAgreeTo}',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.Privacypolicy}',style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ?TColors.textWhite : TColors.primaryColor,
                    decorationColor: dark ?TColors.textWhite : TColors.primaryColor,
                  )),

                  TextSpan(text: '${TTexts.and}',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.term}',style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ?TColors.textWhite : TColors.primaryColor,
                    decorationColor: dark ?TColors.textWhite : TColors.primaryColor,
                  )),

                ]
            )
        )
      ],
    );
  }
}
