import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_with_getx/resource/routes/app_routes.dart';
import 'package:mvvm_with_getx/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
      getPages: AppRoutes.approutes(),
    );
  }
}
