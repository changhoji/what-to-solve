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
    apiKey: 'AIzaSyBBAe-Slcdyg9dZ87bytlGfkwExeC0pXEg',
    appId: '1:48759075209:web:bcd29a66df1acc5f27b158',
    messagingSenderId: '48759075209',
    projectId: 'what-to-solve',
    authDomain: 'what-to-solve.firebaseapp.com',
    databaseURL:
        'https://what-to-solve-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'what-to-solve.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7BAplIVt3Lk7MyJma6vU7QN8jr3AZGP0',
    appId: '1:48759075209:android:beab181a152ddea327b158',
    messagingSenderId: '48759075209',
    projectId: 'what-to-solve',
    databaseURL:
        'https://what-to-solve-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'what-to-solve.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBn4InKkDXAqmNVZrhb6eBf7yCskMMYU4',
    appId: '1:48759075209:ios:81ce012b5471d36927b158',
    messagingSenderId: '48759075209',
    projectId: 'what-to-solve',
    databaseURL:
        'https://what-to-solve-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'what-to-solve.appspot.com',
    iosClientId:
        '48759075209-8jrh49927pgokhki19jto05uqptq9ckd.apps.googleusercontent.com',
    iosBundleId: 'com.example.recommend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBn4InKkDXAqmNVZrhb6eBf7yCskMMYU4',
    appId: '1:48759075209:ios:7e3cf48e105b62a027b158',
    messagingSenderId: '48759075209',
    projectId: 'what-to-solve',
    databaseURL:
        'https://what-to-solve-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'what-to-solve.appspot.com',
    iosClientId:
        '48759075209-iap2dc3op1evr35f85o4310n95q5gvbq.apps.googleusercontent.com',
    iosBundleId: 'com.example.recommend.RunnerTests',
  );
}
