import 'package:bloc/bloc.dart';

import 'CounterState.dart';

class CounterLogic extends Cubit<CounterState>
{


  CounterLogic():super(InitCounter());
  int counter=0;

  void Plss() {
      counter++;
      emit(Pls());
    }
  void neg(){
      counter--;
      emit(Mis());
  }
  void rest(){
      counter =0;
    emit(Rst());
  }

}