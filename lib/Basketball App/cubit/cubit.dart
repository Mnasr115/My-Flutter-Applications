import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_apps/Basketball%20App/cubit/states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAState());

  int teamApoints = 0;
  int teamBpoints = 0;

  void incrementTeams({required String team , required int buttonNumber}) {

    if(team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterTeamAState());
    }
    else{
      teamBpoints += buttonNumber;
      emit(CounterTeamBState());
    }
    }

    void teamReset()
    {
      teamApoints = 0;
      emit(CounterTeamAState());
      teamBpoints = 0;
      emit(CounterTeamBState());
    }


}
