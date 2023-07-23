import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/core/firebase/firebase_auth.dart';
import 'package:textfire/core/routing/router.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/core/theme/light/theme_light.dart';
import 'package:textfire/core/utils/navigator_utils.dart';
import 'package:textfire/ui/auth/login/form/bloc/login_form_bloc.dart';
import 'package:textfire/ui/auth/login/login_page.dart';
import 'package:textfire/ui/profile/widgets/photo/cubit/profile_photo_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
              create: (context) => ProfilePhotoCubit(),
   
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: (context, child) {
          return DevicePreview.appBuilder(context, child);
        },
        title: 'Flutter Demo',
        theme: themeLight,
        initialRoute: Routes.xDefault,
        navigatorKey: NavigatorUtils.navigatorKey,
        routes: router,
      ),
    );
  }
}
