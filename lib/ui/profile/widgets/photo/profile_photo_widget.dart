import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flutter/material.dart'; 
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:textfire/ui/profile/widgets/photo/cubit/profile_photo_cubit.dart';

class ProfilePhotoWidget extends StatelessWidget {
  const ProfilePhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: InkWell(
        child: BlocBuilder<ProfilePhotoCubit, ProfilePhotoState>(
          builder: (context, state) => 
          CircleAvatar(
            radius: 100,
            foregroundImage: NetworkImage(state.user.photoURL ?? ""),
          ),
        ),
        onTap: () => context.read<ProfilePhotoCubit>().update(),
      ),
    );
  }
}
