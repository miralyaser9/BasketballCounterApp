
import 'package:basketball/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterAIncremState());

  int teamA=0;

  int teamB=0;

  void teamsIncreament({required String team,  int? buttonNumber}){
    if(team=='A'){
      teamA+=buttonNumber!;
      emit(CounterAIncremState());
    }
   else if(team=='B') {
      teamB+=buttonNumber!;
      emit(CounterBIncremState());
    }
   else{
     teamA=0;
     teamB=0;
     emit(CounterResetState());
    }

  }


}