import 'package:commerceapp/util/constants/devices/devices_utiles.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSize {
  final Widget? title;
  final bool showBackArea;
  final IconData? leadingicon;
  final List<Widget>? action;
  final VoidCallback? onpressed;
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArea = false,
      this.leadingicon,
      this.action,
      this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArea
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Iconsax.arrow_left),
              )
            : leadingicon != null
                ? IconButton(
                    onPressed: onpressed,
                    icon: Icon(leadingicon),
                  )
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtiles.getAppbarHeight());
}
