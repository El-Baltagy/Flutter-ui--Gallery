import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/controller/cubit/home/states.dart';
import '../../../screens/4-over_view/over_view_sc.dart';
import '../../../screens/5-photo/photo_sc.dart';
import '../../../screens/6-review/review_sc.dart';

class homeCubit extends Cubit<homeStates> {
  homeCubit() :super(initialState());
  static homeCubit getInstance(context) => BlocProvider.of(context);

  int currentIndex = 0;
  bool multiple = true;


  changIndex(val) {
    currentIndex=val;
    emit(changIndx());
  }







}
