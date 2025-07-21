import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'learing_event.dart';
part 'learing_state.dart';

class LearingBloc extends Bloc<LearingEvent, LearingState> {
  LearingBloc() : super(LearingInitial()){
    on<DragUpdateEvent>(dragUpdateEvent);
  }


  FutureOr<void> dragUpdateEvent(DragUpdateEvent event, Emitter<LearingState> emit) {
    emit(DragUpdateState(score: event.score));
  }
}
