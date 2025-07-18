part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class CheckboxState extends LoginState{
  final bool check;

  CheckboxState({required this.check});
}
class SignInState extends LoginState{
  
}