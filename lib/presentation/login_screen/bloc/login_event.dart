part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class CheckBoxEvent extends LoginEvent{
  final bool check;

  CheckBoxEvent({required this.check});
}
class SignInEvent extends LoginEvent{
  
}