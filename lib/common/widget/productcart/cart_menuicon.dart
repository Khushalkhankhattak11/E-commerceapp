
import 'package:commerceapp/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterItem extends StatelessWidget {
  final VoidCallback onpress;
  final Color iconcolor;
  const TCartCounterItem({
    super.key, required this.onpress,required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onpress,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconcolor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(

                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                    color: Colors.white,
                    fontSizeFactor: 0.8
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
