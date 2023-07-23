  import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/ui/auth/login/form/bloc/login_form_bloc.dart';
import 'package:textfire/ui/auth/login/form/login_form_model.dart';

void loginFormConfirmAction({required BuildContext context, required String  username, required String password}) {
    return context.read<LoginFormBloc>().add(
          LoginFormFetch(
            model: LoginFormModel(
                username: username,
                password: password,
              ),
          ),
        );
  }