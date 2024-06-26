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
    apiKey: 'AIzaSyBxAKX8bFPY3W4qH3bHgGknRq3pod5lbEY',
    appId: '1:1066570386647:web:d8951726cf8b70381a7492',
    messagingSenderId: '1066570386647',
    projectId: 'weigh-master',
    authDomain: 'weigh-master.firebaseapp.com',
    storageBucket: 'weigh-master.appspot.com',
    measurementId: 'G-VJVTRLW2S0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOfCVPI7CQ0jAB5-E74RjEUgw_-Nek1_w',
    appId: '1:1066570386647:android:d47019103b56d8bb1a7492',
    messagingSenderId: '1066570386647',
    projectId: 'weigh-master',
    storageBucket: 'weigh-master.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9F9N7tr3Ph9LZQ42ywbYsWPybPLjrHSE',
    appId: '1:1066570386647:ios:8011968c088dbfad1a7492',
    messagingSenderId: '1066570386647',
    projectId: 'weigh-master',
    storageBucket: 'weigh-master.appspot.com',
    iosBundleId: 'com.example.weighMasterAdmin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9F9N7tr3Ph9LZQ42ywbYsWPybPLjrHSE',
    appId: '1:1066570386647:ios:8011968c088dbfad1a7492',
    messagingSenderId: '1066570386647',
    projectId: 'weigh-master',
    storageBucket: 'weigh-master.appspot.com',
    iosBundleId: 'com.example.weighMasterAdmin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBxAKX8bFPY3W4qH3bHgGknRq3pod5lbEY',
    appId: '1:1066570386647:web:37d53d73a2611c301a7492',
    messagingSenderId: '1066570386647',
    projectId: 'weigh-master',
    authDomain: 'weigh-master.firebaseapp.com',
    storageBucket: 'weigh-master.appspot.com',
    measurementId: 'G-L1845DDJ5S',
  );
}
