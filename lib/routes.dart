import 'package:flutter/material.dart';
import 'package:quote_daily_task1/Screens/DialogScreen.dart';
import 'package:quote_daily_task1/Screens/FullScreen.dart';


class AppRoutes{

  static Map<String, Widget Function(BuildContext)> routes = {

     '/':(context)=>Dialogscreen(),
     // '/':(context)=>Fullscreen(),
  };
}

