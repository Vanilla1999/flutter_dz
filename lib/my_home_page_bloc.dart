import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageCubit extends Cubit<Color> {
  MyHomePageCubit() : super(Colors.white);

  onBlue() {
    emit(Colors.blue);
  }

  onRed() {
    emit(Colors.red);
  }

  onYellow() {
    emit(Colors.yellow);
  }

  onGreen() {
    emit(Colors.green);
  }
}