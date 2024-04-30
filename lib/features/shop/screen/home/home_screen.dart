import 'package:commerceapp/common/widget/customshape/containers/tsearchcontainer.dart';
import 'package:commerceapp/features/shop/screen/home/widget/thomeappbar.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/customshape/containers/tprimaryheadercontainer.dart';
import '../../../../common/widget/image_text_widget/vertical_text_widget.dart';
import '../../../../common/widget/texts/sectionheading.dart';
import '../../../../util/constants/image_String.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                /// Appbar

                THomeAppBar(),
                SizedBox(height: TSizes.spacebtwsection),

                /// Search bar
                TSearchContainer(
                  text: "Search in store",
                ),

                SizedBox(height: TSizes.spacebtwsection),

                /// category
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultspace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: "Popular Categories",
                        showActionbutton: false,
                        textcolor: Colors.white,
                      ),
                      SizedBox(height: TSizes.spacebtwItem),

                      ///Categories
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return TVerticalImageText(
                              image: TImage.shoes,
                              title: 'Shoes',
                              onpressed: () {},
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
