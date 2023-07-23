import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'profile_photo_state.dart';

class ProfilePhotoCubit extends Cubit<ProfilePhotoState> {
  ProfilePhotoCubit() : super(ProfilePhotoInitial(user: FirebaseAuth.instance.currentUser!));

  void update() async {
    try {
      final ImagePicker picker = ImagePicker();

      final XFile? photo = await picker.pickImage(source: ImageSource.camera);
      if(photo == null) return;

      var storageRef =
          FirebaseStorage.instance.ref("photo-urls/${photo.name}");
      var photoRef = await storageRef.putData(await photo.readAsBytes());
      var imgFetched = await photoRef.ref.getDownloadURL();

      await state.user.updatePhotoURL(imgFetched);
      await state.user.reload();

      emit(ProfilePhotoUpdated(user: FirebaseAuth.instance.currentUser!));
    } catch (error) {
      emit(ProfilePhotoFailed(user: state.user));
    }
  }
}
