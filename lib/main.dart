import 'package:flutter/material.dart';
import 'package:quote_daily_task1/routes.dart';



void main()

{
    runApp(MyApp());
}












class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: AppRoutes.routes,
    );


  }
}
