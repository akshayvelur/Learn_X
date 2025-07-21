part of 'learing_bloc.dart';

@immutable
abstract class LearingEvent {}
class DragUpdateEvent extends LearingEvent{
  final Map<String,bool>score;

  DragUpdateEvent({required this.score});
}
