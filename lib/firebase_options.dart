// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAiTO77tCyEpGIVb3hnrX8_ttGCZjascEY',
    appId: '1:159226975842:web:c7c5b044ce0ce01039e33b',
    messagingSenderId: '159226975842',
    projectId: 'adhicine-67800',
    authDomain: 'adhicine-67800.firebaseapp.com',
    storageBucket: 'adhicine-67800.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5IyxLXgYeQ4fk8h_dvk-oHzJpfnOiluM',
    appId: '1:159226975842:android:ffa30ba1e68b1ead39e33b',
    messagingSenderId: '159226975842',
    projectId: 'adhicine-67800',
    storageBucket: 'adhicine-67800.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSsKMBTBRPV8Uw2b-fqj6qem39EZOlueo',
    appId: '1:159226975842:ios:8c9eb3874d8bb27439e33b',
    messagingSenderId: '159226975842',
    projectId: 'adhicine-67800',
    storageBucket: 'adhicine-67800.appspot.com',
    iosBundleId: 'com.example.umlaHelp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSsKMBTBRPV8Uw2b-fqj6qem39EZOlueo',
    appId: '1:159226975842:ios:8c9eb3874d8bb27439e33b',
    messagingSenderId: '159226975842',
    projectId: 'adhicine-67800',
    storageBucket: 'adhicine-67800.appspot.com',
    iosBundleId: 'com.example.umlaHelp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAiTO77tCyEpGIVb3hnrX8_ttGCZjascEY',
    appId: '1:159226975842:web:b49ecec7118a5df139e33b',
    messagingSenderId: '159226975842',
    projectId: 'adhicine-67800',
    authDomain: 'adhicine-67800.firebaseapp.com',
    storageBucket: 'adhicine-67800.appspot.com',
  );

}