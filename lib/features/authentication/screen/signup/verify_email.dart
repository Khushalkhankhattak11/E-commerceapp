import 'package:commerceapp/features/authentication/screen/login/login.dart';
import 'package:commerceapp/util/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(()=>LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              /// Image

              /// Title and Subtitle

              /// Button
            ],
          ),
        ),
      ),
    );
  }
}
