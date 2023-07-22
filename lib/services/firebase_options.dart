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
    apiKey: 'AIzaSyDuA_W5FStXNLQgFGdY9xzzag5jZSZX82E',
    appId: '1:45239418273:web:642a89cf768f080a255fe0',
    messagingSenderId: '45239418273',
    projectId: 'opticflutter-443c9',
    authDomain: 'opticflutter-443c9.firebaseapp.com',
    storageBucket: 'opticflutter-443c9.appspot.com',
    measurementId: 'G-CE8NP1V2RW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxXs4y9DNyIyE5djTd-otxdYBe1lznTSA',
    appId: '1:45239418273:android:32af04add23d14db255fe0',
    messagingSenderId: '45239418273',
    projectId: 'opticflutter-443c9',
    storageBucket: 'opticflutter-443c9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8RGhML5OyA5_0noixMDfBca0pYgXGlio',
    appId: '1:45239418273:ios:587c4f6b2c49cb01255fe0',
    messagingSenderId: '45239418273',
    projectId: 'opticflutter-443c9',
    storageBucket: 'opticflutter-443c9.appspot.com',
    iosClientId:
        '45239418273-j36flm0470ggo9l7lku8v90gej5v1ksn.apps.googleusercontent.com',
    iosBundleId: 'com.example.firstProjectFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8RGhML5OyA5_0noixMDfBca0pYgXGlio',
    appId: '1:45239418273:ios:587c4f6b2c49cb01255fe0',
    messagingSenderId: '45239418273',
    projectId: 'opticflutter-443c9',
    storageBucket: 'opticflutter-443c9.appspot.com',
    iosClientId:
        '45239418273-j36flm0470ggo9l7lku8v90gej5v1ksn.apps.googleusercontent.com',
    iosBundleId: 'com.example.firstProjectFlutter',
  );
}
