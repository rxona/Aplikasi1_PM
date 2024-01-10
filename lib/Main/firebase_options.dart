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
    apiKey: 'AIzaSyD0vExlYQJuM-DnE_b-45rHns5HQfdo6dA',
    appId: '1:1007670067130:web:4b15e4f4b3635603d8a783',
    messagingSenderId: '1007670067130',
    projectId: 'swalayan-efbc2',
    authDomain: 'swalayan-efbc2.firebaseapp.com',
    storageBucket: 'swalayan-efbc2.appspot.com',
    measurementId: 'G-N1E9XB7K80',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-AqLTACSwBtHnrZSGhWWiRsxUId2-K9M',
    appId: '1:1007670067130:android:5b33a22a1c2d57e7d8a783',
    messagingSenderId: '1007670067130',
    projectId: 'swalayan-efbc2',
    storageBucket: 'swalayan-efbc2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_8hm6JWEpMJKcOoZ_k5wXMhN0X0MpN5U',
    appId: '1:1007670067130:ios:4e0a1c58c6526954d8a783',
    messagingSenderId: '1007670067130',
    projectId: 'swalayan-efbc2',
    storageBucket: 'swalayan-efbc2.appspot.com',
    iosBundleId: 'com.example.appPemrogramanMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_8hm6JWEpMJKcOoZ_k5wXMhN0X0MpN5U',
    appId: '1:1007670067130:ios:2dcff6a2b2b6cb72d8a783',
    messagingSenderId: '1007670067130',
    projectId: 'swalayan-efbc2',
    storageBucket: 'swalayan-efbc2.appspot.com',
    iosBundleId: 'com.example.appPemrogramanMobile.RunnerTests',
  );
}
