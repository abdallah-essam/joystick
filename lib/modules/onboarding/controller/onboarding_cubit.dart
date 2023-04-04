import 'package:clean/shared/assets/images.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState());
  int itemIndex = 0;
  List<String> images = [MyImages.onBoardingOne,MyImages.onBoardingTwo,MyImages.onBoardingThree];
  List<String> titles = ['Book rooms', 'Rent tools', 'Buy tools'];
  List<String> subtitles = [
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be'
  ];

  void updateData(int index) {
    itemIndex = index;
    emit(OnBoardingState());
  }
}

abstract class AppState {}

class OnBoardingState extends AppState {}
