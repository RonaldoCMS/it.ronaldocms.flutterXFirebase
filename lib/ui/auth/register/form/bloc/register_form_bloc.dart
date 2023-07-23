import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:textfire/ui/auth/register/form/register_form_model.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc() : super(RegisterFormInitial()) {
    on<RegisterFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

   FutureOr<void> onRegisterFormFetch(event, emit) async {
    emit(RegisterFormLoading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.model.username, password: event.model.password);
      emit(RegisterFormSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(RegisterFormError(message: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(RegisterFormError(message: 'Wrong password provided for that user.'));
      } else {
        emit(RegisterFormError(message: 'Errore Sconosciuto'));
      }
    }
  }
}
