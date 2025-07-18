import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learn_x/core/theme/app_them.dart';
import 'package:meta/meta.dart';

part 'themes_event.dart';
part 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemeData> {
  bool status =false;
  ThemesBloc() : super(AppTheme.lightTheme){
   
    on<ModeEvent>(modeEvent);
  }



  FutureOr<void> modeEvent(ModeEvent event, Emitter<ThemeData> emit) {
    
    emit(status==false? AppTheme.darkTheme:AppTheme.lightTheme);
    status=!status;
 
  }
}
