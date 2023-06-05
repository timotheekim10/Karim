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
    apiKey: 'AIzaSyDYqeTXMAZHEkHZZYaA4z_zlgKOuRiQIHI',
    appId: '1:901980869181:web:aaa8c82113013560705054',
    messagingSenderId: '901980869181',
    projectId: 'karim-data',
    authDomain: 'karim-data.firebaseapp.com',
    storageBucket: 'karim-data.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9EboOyATPo0feaRYblgrIVI9h7m2Jmvg',
    appId: '1:901980869181:android:2409691fc7c3170a705054',
    messagingSenderId: '901980869181',
    projectId: 'karim-data',
    storageBucket: 'karim-data.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQqfoif9UrVf8P2DyNxQUSuIuF6Nvcnk4',
    appId: '1:901980869181:ios:0e2880180110813d705054',
    messagingSenderId: '901980869181',
    projectId: 'karim-data',
    storageBucket: 'karim-data.appspot.com',
    iosClientId: '901980869181-69rdidgbkqsnst0cfecouihk2c97h9h9.apps.googleusercontent.com',
    iosBundleId: 'com.example.karim',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQqfoif9UrVf8P2DyNxQUSuIuF6Nvcnk4',
    appId: '1:901980869181:ios:0e2880180110813d705054',
    messagingSenderId: '901980869181',
    projectId: 'karim-data',
    storageBucket: 'karim-data.appspot.com',
    iosClientId: '901980869181-69rdidgbkqsnst0cfecouihk2c97h9h9.apps.googleusercontent.com',
    iosBundleId: 'com.example.karim',
  );
}
