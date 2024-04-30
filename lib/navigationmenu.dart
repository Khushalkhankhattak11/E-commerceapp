import 'package:commerceapp/features/shop/screen/home/home_screen.dart';
import 'package:commerceapp/features/shop/screen/profile/profile_screen.dart';
import 'package:commerceapp/features/shop/screen/store/store_screen.dart';

import 'package:commerceapp/util/constants/colors.dart';
import 'package:commerceapp/util/constants/helper/helpeer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screen/wishlist/whislist_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar:NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        backgroundColor: dark ? TColors.black : TColors.textWhite,
        indicatorColor: dark
            ? TColors.textWhite.withOpacity(0.1)
            : TColors.black.withOpacity(0.1),
        onDestinationSelected: (index) =>
        controller.selectedIndex.value = index,
        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
          NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
          NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        ],
      ),
      body: Obx(
            () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];
}
