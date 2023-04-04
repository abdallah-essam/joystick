


import 'package:clean/shared/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/screens/login.dart';
import '../controller/onboarding_cubit.dart';
import '../components/dots_indicator.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 3,
          child: Builder(
            builder: (BuildContext context) {
              int index = BlocProvider.of<OnBoardingCubit>(context).itemIndex;
              BlocProvider.of<OnBoardingCubit>(context)
                  .updateData(DefaultTabController.of(context).index);
              return Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: TabBarView(
                        physics: const BouncingScrollPhysics(),
                        children: List.generate(3, (index) {
                          return Column(children: [
                            const SizedBox(height: 128),
                            Image.asset(
                              BlocProvider.of<OnBoardingCubit>(context)
                                  .images[index],
                              width: 180,
                              height: 180,
                            ),
                            Image.asset(MyImages.shadow),
                            const SizedBox(height: 32),
                            Text(
                              BlocProvider.of<OnBoardingCubit>(context)
                                  .titles[index],
                              style: const TextStyle(fontSize: 32,fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 16),
                            Text(
                                BlocProvider.of<OnBoardingCubit>(context)
                                    .subtitles[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(49, 53, 59, 0.7)),
                                textAlign: TextAlign.center),
                          ]);
                        }),
                      ),
                    ),
                    DotsIndicator(activeIndex: index, itemCount: 3),
                    const SizedBox(height: 56),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          minimumSize: const Size(343, 46),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        if (index == 0 || index == 1) {
                          BlocProvider.of<OnBoardingCubit>(context).updateData(
                              DefaultTabController.of(context).index++);
                        }
                        if (index == 2) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        }
                      },
                      child: Text(index == 2 ? 'Start' : 'Next'),
                    ),
                    const SizedBox(height: 16),
                    index == 2
                        ? const SizedBox(height: 48)
                        : TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                            },
                            child: const Text('SKIP'),
                          ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
