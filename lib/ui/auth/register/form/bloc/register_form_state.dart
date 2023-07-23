part of 'register_form_bloc.dart';

@immutable
abstract class RegisterFormState {}

class RegisterFormInitial extends RegisterFormState {}

class RegisterFormError extends RegisterFormState {
  final String message;
  RegisterFormError({required this.message});
}

class RegisterFormSuccess extends RegisterFormState {}

class RegisterFormLoading extends RegisterFormState {}