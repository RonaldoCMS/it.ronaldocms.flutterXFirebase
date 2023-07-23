part of 'profile_photo_cubit.dart';

@immutable
abstract class ProfilePhotoState {
  User user;
  ProfilePhotoState({required this.user});
}

class ProfilePhotoInitial extends ProfilePhotoState {
  ProfilePhotoInitial({required super.user});
}

class ProfilePhotoUpdated extends ProfilePhotoState {
  ProfilePhotoUpdated({required super.user});

}

class ProfilePhotoFailed extends ProfilePhotoState {
  ProfilePhotoFailed({required super.user});
}
