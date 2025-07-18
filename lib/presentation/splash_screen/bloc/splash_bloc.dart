import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()){
    on<SplashTimerEvent>(splashTimerEvent);
  }

  FutureOr<void> splashTimerEvent(SplashTimerEvent event, Emitter<SplashState> emit) async{

    await Future.delayed(Duration(seconds: 4));
    emit(SplashTimerState());
  }
}
