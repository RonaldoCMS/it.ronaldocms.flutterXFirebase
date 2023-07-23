import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textfire/core/firebase/firebase_auth.dart';
import 'package:textfire/ui/profile/widgets/photo/cubit/profile_photo_cubit.dart';
import 'package:textfire/ui/profile/widgets/photo/profile_photo_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ProfilePhotoWidget(),
            Divider(),
            TextButton(onPressed: () => MyFirebaseAuth.logout(), child: const Text("Esci"))
          ],
        ),
      ),
    );
  }
}
