import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfire/core/routing/routes.dart';
import 'package:textfire/core/utils/navigator_utils.dart';
import 'package:textfire/ui/profile/widgets/photo/cubit/profile_photo_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("DarshBoard"),
                IconButton(
                  icon: BlocBuilder<ProfilePhotoCubit, ProfilePhotoState>(
                    builder: (context, state) {
                      return CircleAvatar(
                        foregroundImage: NetworkImage(
                            state.user.photoURL ?? ""),
                      );
                    },
                  ),
                  onPressed: () =>
                      NavigatorUtils.pushNamed(route: Routes.profile),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
