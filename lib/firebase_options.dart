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
    apiKey: 'AIzaSyAMeviDGqcCzh8z1-4xOma1hUUOpZkxMq8',
    appId: '1:763348082002:web:e80353f04ab7731172ae8b',
    messagingSenderId: '763348082002',
    projectId: 'aljabar1',
    authDomain: 'aljabar1.firebaseapp.com',
    storageBucket: 'aljabar1.appspot.com',
    measurementId: 'G-43N6F8G5V9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtrgKR1xIBL_NPUMnj9uM5DGsW3ROv5Zs',
    appId: '1:763348082002:android:6c0a1c1ba36400f072ae8b',
    messagingSenderId: '763348082002',
    projectId: 'aljabar1',
    storageBucket: 'aljabar1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0hcRKa7SPqrqjUGAoXnc2JdNEviup8s8',
    appId: '1:763348082002:ios:00cc15d1697bfb6572ae8b',
    messagingSenderId: '763348082002',
    projectId: 'aljabar1',
    storageBucket: 'aljabar1.appspot.com',
    iosBundleId: 'com.example.aljabar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0hcRKa7SPqrqjUGAoXnc2JdNEviup8s8',
    appId: '1:763348082002:ios:6cea07686c1ad51f72ae8b',
    messagingSenderId: '763348082002',
    projectId: 'aljabar1',
    storageBucket: 'aljabar1.appspot.com',
    iosBundleId: 'com.example.aljabar.RunnerTests',
  );
}
