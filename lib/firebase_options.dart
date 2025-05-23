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
    apiKey: 'AIzaSyAUu7wAZT3gkANEJakh_ozNVjt-QVYd3qo',
    appId: '1:781729206999:web:d775978066848da65e9692',
    messagingSenderId: '781729206999',
    projectId: 'registrationapp-65af1',
    authDomain: 'registrationapp-65af1.firebaseapp.com',
    storageBucket: 'registrationapp-65af1.firebasestorage.app',
    measurementId: 'G-7QYBLJ7F6J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8WQ4lDDYBQGRFxGLB3qXL-rDzh5dKgiM',
    appId: '1:781729206999:android:ef0006acc900b27c5e9692',
    messagingSenderId: '781729206999',
    projectId: 'registrationapp-65af1',
    storageBucket: 'registrationapp-65af1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgJ5gUHIxknmzgZpZ16fIvyKD2tI57RDs',
    appId: '1:781729206999:ios:02fdafdfd4140dc05e9692',
    messagingSenderId: '781729206999',
    projectId: 'registrationapp-65af1',
    storageBucket: 'registrationapp-65af1.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgJ5gUHIxknmzgZpZ16fIvyKD2tI57RDs',
    appId: '1:781729206999:ios:02fdafdfd4140dc05e9692',
    messagingSenderId: '781729206999',
    projectId: 'registrationapp-65af1',
    storageBucket: 'registrationapp-65af1.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUu7wAZT3gkANEJakh_ozNVjt-QVYd3qo',
    appId: '1:781729206999:web:93dee142f45411a75e9692',
    messagingSenderId: '781729206999',
    projectId: 'registrationapp-65af1',
    authDomain: 'registrationapp-65af1.firebaseapp.com',
    storageBucket: 'registrationapp-65af1.firebasestorage.app',
    measurementId: 'G-7CQ7QJCMFP',
  );
}
