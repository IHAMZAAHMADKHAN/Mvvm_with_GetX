import 'package:get/get.dart';
import 'package:mvvm_with_getx/resource/routes/routes_name.dart';
import 'package:mvvm_with_getx/view/splash_screen.dart';

class AppRoutes {
  static approutes() => [
    GetPage(
      name: RoutesName.splash,
      page: () => SplashScreen(),
      transitionDuration: Duration(microseconds: 200),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
