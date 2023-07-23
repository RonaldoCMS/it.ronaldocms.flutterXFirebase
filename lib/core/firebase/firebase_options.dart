// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAbHw5gcp8_NnLZGroBvKCC8O9wpvnJ23o',
    appId: '1:969303122934:web:21adbc33e9f5cc8465ddd7',
    messagingSenderId: '969303122934',
    projectId: 'textfire-221bf',
    authDomain: 'textfire-221bf.firebaseapp.com',
    storageBucket: 'textfire-221bf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6Mq_jRnh04VOBjYCr38YcdypiD5Fg5zY',
    appId: '1:969303122934:android:2074608b877c9d7765ddd7',
    messagingSenderId: '969303122934',
    projectId: 'textfire-221bf',
    storageBucket: 'textfire-221bf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJLFGRQ8WG_upU-pCIy2-K7F08sheLBxM',
    appId: '1:969303122934:ios:80374c3d0006c0b165ddd7',
    messagingSenderId: '969303122934',
    projectId: 'textfire-221bf',
    storageBucket: 'textfire-221bf.appspot.com',
    iosClientId: '969303122934-o5mcl6oe9kfpu0jllg7m0aefpomk1tgk.apps.googleusercontent.com',
    iosBundleId: 'it.ronaldocms.textfire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJLFGRQ8WG_upU-pCIy2-K7F08sheLBxM',
    appId: '1:969303122934:ios:80374c3d0006c0b165ddd7',
    messagingSenderId: '969303122934',
    projectId: 'textfire-221bf',
    storageBucket: 'textfire-221bf.appspot.com',
    iosClientId: '969303122934-o5mcl6oe9kfpu0jllg7m0aefpomk1tgk.apps.googleusercontent.com',
    iosBundleId: 'it.ronaldocms.textfire',
  );
}
