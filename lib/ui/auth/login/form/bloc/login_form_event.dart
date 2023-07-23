part of 'login_form_bloc.dart';

@immutable
abstract class LoginFormEvent {}

class LoginFormFetch extends LoginFormEvent {
  final LoginFormModel model;
  LoginFormFetch({required this.model});
}