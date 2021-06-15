import 'dart:io';

import 'package:appcovid/screens/android/appcovid.dart';
import 'package:flutter/material.dart';

void main() {

  if(Platform.isAndroid){
    debugPrint('app no Android');
    runApp(AppCovid());
  }
  if(Platform.isIOS){
    debugPrint('app no IOS');
  }


  //runApp(MyApp());
}




