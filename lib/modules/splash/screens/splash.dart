
import 'package:clean/shared/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../onboarding/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset(MyImages.splash),
        Image.asset(MyImages.logo)
      ],
    );
  }
}
