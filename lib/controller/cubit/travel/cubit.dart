import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/controller/cubit/travel/states.dart';


class TravelCubit extends Cubit<TravelStates> {
  TravelCubit() :super(initialState());
  static TravelCubit getInstance(context) => BlocProvider.of(context);

  int currentIndex = 0;


  changIndex(val) {
    currentIndex=val;
    emit(changIndx());
  }

}
