part of 'register_form_bloc.dart';

@immutable
abstract class RegisterFormEvent {}

class RegisterFormFetch extends RegisterFormEvent {
  final RegisterFormModel model;
  RegisterFormFetch({required this.model});
}
