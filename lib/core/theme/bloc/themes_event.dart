part of 'themes_bloc.dart';

@immutable
abstract class ThemesEvent {}
class ModeEvent extends ThemesEvent{

}
class ModeStatus extends ThemesEvent{
 final bool status;

  ModeStatus({required this.status});
}