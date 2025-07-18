part of 'themes_bloc.dart';

@immutable
abstract class ThemesState {

}

class ThemesInitial extends ThemesState {

}
class ModeState extends ThemesState{
  final  ThemeData? currentTheme;

  ModeState({ this.currentTheme});
}
