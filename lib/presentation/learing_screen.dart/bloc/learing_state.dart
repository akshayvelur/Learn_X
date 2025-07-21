part of 'learing_bloc.dart';

@immutable
abstract class LearingState {}

class LearingInitial extends LearingState {}
class DragUpdateState extends LearingState{
  final Map<String,bool>score;

  DragUpdateState({required this.score});
}