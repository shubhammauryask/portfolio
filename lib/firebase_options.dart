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
    apiKey: 'AIzaSyDsEFLBG5oxxjYVsi0oNOqzpwPTX1kaOFo',
    appId: '1:1045944414183:web:518bcadd652a5c82d31742',
    messagingSenderId: '1045944414183',
    projectId: 'portfolio-ca96e',
    authDomain: 'portfolio-ca96e.firebaseapp.com',
    storageBucket: 'portfolio-ca96e.appspot.com',
    measurementId: 'G-PZF4ZX3EWM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqupZVLPqPQSJyVh9vQvJMVVorvwdB8nI',
    appId: '1:1045944414183:android:3b6485175fdec9b0d31742',
    messagingSenderId: '1045944414183',
    projectId: 'portfolio-ca96e',
    storageBucket: 'portfolio-ca96e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBA95Th6qXrRfH4hRUrLmUtgudNm5wakGw',
    appId: '1:1045944414183:ios:229b6a7559371943d31742',
    messagingSenderId: '1045944414183',
    projectId: 'portfolio-ca96e',
    storageBucket: 'portfolio-ca96e.appspot.com',
    iosClientId: '1045944414183-clgr6761sjvpsjik3gickm3n116i38cm.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBA95Th6qXrRfH4hRUrLmUtgudNm5wakGw',
    appId: '1:1045944414183:ios:6adfcda85e193d52d31742',
    messagingSenderId: '1045944414183',
    projectId: 'portfolio-ca96e',
    storageBucket: 'portfolio-ca96e.appspot.com',
    iosClientId: '1045944414183-3bepk2ruhejplgkecajv7ick0ktmod91.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio.RunnerTests',
  );
}