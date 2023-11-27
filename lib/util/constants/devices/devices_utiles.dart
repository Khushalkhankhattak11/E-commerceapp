import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtiles {
  static void hidekeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscopeOrientation(BuildContext context){
    final viewInsets =View.of(context).viewInsets;
    return viewInsets.bottom ==0;
  }

  static bool isPortaritOrientation(BuildContext context){
    final viewInsets =View.of(context).viewInsets;
    return viewInsets.bottom !=0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable?SystemUiMode.immersiveSticky :SystemUiMode.edgeToEdge);
  }


  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenwidth(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double getpixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }
  static double getStatusbarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }


 // static bool isAndroid(){
  //  return Platform.isAndroid;
 /// }

  static void lanchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw "Could not lanch $url";
    }
  }
}
