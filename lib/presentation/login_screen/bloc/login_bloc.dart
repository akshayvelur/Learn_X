import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:learn_x/domine/google_authentication.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()){
    on<CheckBoxEvent>(checkBoxEvent);
    on<SignInEvent>(signInEvent);
  }


  FutureOr<void> checkBoxEvent(CheckBoxEvent event, Emitter<LoginState> emit) {
    emit(CheckboxState(check: !event.check));
  }

  FutureOr<void> signInEvent(SignInEvent event, Emitter<LoginState> emit)async{
     
    await googleAuthService();
    emit(SignInState());
  }
}
