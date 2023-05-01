import 'package:flutter/material.dart';
import 'package:joystick/modules/auth/presentation/screens/login_screen.dart';
import 'package:joystick/modules/auth/presentation/screens/register_screen.dart';
import 'package:joystick/modules/home/presentation/screens/home.dart';
import 'package:joystick/modules/splash/presentation/screens/splash_screen.dart';
import '../../modules/on_boarding/presentation/screens/on_boarding_screen.dart';

class MyRoutes {
  static const String main = '/';
  static const String onBoarding = 'OnBoarding';
  static const String login = 'Login';
  static const String register = 'Register';
  static const String home = 'Homepage';

  static Route<dynamic>? onGenerateRoute(RouteSettings  routeSettings) {
    switch (routeSettings.name) {
      case main:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
        case login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen());
        case register:
        return MaterialPageRoute(
            builder: (context) => const RegisterScreen());
        case home:
        return MaterialPageRoute(
            builder: (context) => const HomepageScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
