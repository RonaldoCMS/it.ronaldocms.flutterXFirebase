import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/core/utils/navigator_utils.dart';
import 'package:textfire/ui/auth/login/form/bloc/login_form_bloc.dart';

void loginFormListener(context, state) {
  if (state is LoginFormSuccess) {
    Navigator.of(context).pop();
    NavigatorUtils.pushNamedAndRemoveUntil(route: Routes.home);
  } else if (state is LoginFormError) {
    Navigator.of(context).pop();
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: "Errore",
      text: state.message
    );
  } else if (state is LoginFormLoading) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.loading,

    );
  }
}
