

import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/helper/helpeer.dart';
import '../../../util/constants/sizes.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final Color textcolor;
  final Color? backgroundColor;
  final VoidCallback? onpressed;
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textcolor = Colors.white,
    this.backgroundColor = Colors.white,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return InkWell(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spacebtwItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:
                backgroundColor ?? (dark ? TColors.dark : TColors.light),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                    color:THelperFunction.isDarkMode(context)?TColors.light : TColors.dark
                ),
              ),
            ),
            SizedBox(height: TSizes.spacebtwItem / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: textcolor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
