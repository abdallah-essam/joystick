import 'package:flutter/material.dart';
import 'package:joystick/shared/constants/my_images.dart';
import 'package:joystick/shared/constants/my_strings.dart';
import 'package:joystick/shared/routes/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(alignment: Alignment.center, children: [
          PageView.builder(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  index == 1
                      ? RotationTransition(
                          turns: const AlwaysStoppedAnimation(-44 / 360),
                          child: Image.asset(
                            MyImages.onBoardingImages[index],
                            height: 180,
                            width: 250,
                          ),
                        )
                      : Image.asset(
                          MyImages.onBoardingImages[index],
                          height: 180,
                          width: 250,
                        ),
                  const SizedBox(height: 24),
                  Image.asset(
                    MyImages.shadow,
                    height: 20,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    MyStrings.onBoardingTitles[index],
                    style: const TextStyle(fontSize: 32),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    MyStrings.onBoardingSubtitles[index],
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    height: 8,
                    width: 12,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  activeDotDecoration: DotDecoration(
                    height: 8,
                    width: 60,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                  onPressed: () {
                    controller.page! < 2
                        ? controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linearToEaseOut)
                        : Navigator.pushReplacementNamed(
                            context, MyRoutes.login);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Next')),
              const SizedBox(height: 16),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, MyRoutes.login);
                  },
                  child: const Text('Skip')),
              const SizedBox(height: 32),
            ],
          ),
        ]),
      ),
    );
  }
}
