import 'package:commerceapp/common/widget/appbar/customappbar.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultspace),
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (_, index)=>Column(
                children: [
                  Row(
                    children: [
                      /// Image


                       SizedBox(width: TSizes.spacebtwsection),

                      /// title price and size

                    ],
                  )
                ],
              ),
              separatorBuilder: (_, __) =>
                  SizedBox(height: TSizes.spacebtwsection),
              itemCount: 4),
        ),
      ),
    );
  }
}



class TBrandTitleWithVerfiedIcon extends StatelessWidget {
  const TBrandTitleWithVerfiedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [


      ],
    );
  }
}
