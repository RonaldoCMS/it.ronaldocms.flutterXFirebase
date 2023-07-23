import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:textfire/ui/auth/Register/form/bloc/Register_form_bloc.dart';
import 'package:textfire/ui/auth/Register/form/bloc/register_form_bloc.dart';

void registerFormListener(context, state) {
  if (state is RegisterFormSuccess) {
    Navigator.of(context).pop();
  } else if (state is RegisterFormError) {
    Navigator.of(context).pop();
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: "Errore",
      text: state.message
    );
  } else if (state is RegisterFormLoading) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.loading,

    );
  }
}
