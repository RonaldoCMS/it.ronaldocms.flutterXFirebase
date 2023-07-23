import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:textfire/ui/auth/login/form/login_form_model.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormInitial()) {
    on<LoginFormFetch>(onLoginFormFetch);
  }

  FutureOr<void> onLoginFormFetch(event, emit) async {
    emit(LoginFormLoading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.model.username, password: event.model.password);
      emit(LoginFormSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFormError(message: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFormError(message: 'Wrong password provided for that user.'));
      } else {
        emit(LoginFormError(message: 'Errore Sconosciuto'));
      }
    }
  }
}
