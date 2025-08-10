import 'package:flutter/material.dart';
import 'package:mvvm_with_getx/resource/assets/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: Image(image: AssetImage(ImageAssets.logo)),
        ),
      ),
    );
  }
}
