  import 'dart:async';

import 'package:flutter/material.dart';
class DebouncerProvider extends ChangeNotifier {
  


  int? milliSeconds;
VoidCallback? action;
Timer? timer;

run(VoidCallback action){
  if (null != timer) {
    timer!.cancel();
  }
  timer=Timer(Duration(milliseconds: Duration.millisecondsPerSecond),
      action);
}


}
