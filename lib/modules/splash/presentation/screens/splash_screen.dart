import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joystick/shared/routes/routes.dart';

import '../../../../shared/constants/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacementNamed(context, MyRoutes.onBoarding);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            MyImages.splashBackground,
            fit: BoxFit.fill,
          ),
          Image.asset(
            MyImages.splash,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
