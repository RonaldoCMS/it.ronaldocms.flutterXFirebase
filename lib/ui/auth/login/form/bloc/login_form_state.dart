part of 'login_form_bloc.dart';

@immutable
abstract class LoginFormState {}

class LoginFormInitial extends LoginFormState {}

class LoginFormError extends LoginFormState {
  final String message;
  LoginFormError({required this.message});
}

class LoginFormSuccess extends LoginFormState {}

class LoginFormLoading extends LoginFormState {}