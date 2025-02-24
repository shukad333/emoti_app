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
    apiKey: 'AIzaSyDC_KvoX8HqLpMusSoPE9yufQRUiKzoa3c',
    appId: '1:69529283541:web:57a1f9cfb741362f856b5c',
    messagingSenderId: '69529283541',
    projectId: 'emoti-fb-app',
    authDomain: 'emoti-fb-app.firebaseapp.com',
    storageBucket: 'emoti-fb-app.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANH35wuuikscMQLvkzDokfQdHLqP4tlrM',
    appId: '1:69529283541:android:fc5384ba91d658d2856b5c',
    messagingSenderId: '69529283541',
    projectId: 'emoti-fb-app',
    storageBucket: 'emoti-fb-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpkMADz3nblfh3CAp7L9H9s90SjZygotA',
    appId: '1:69529283541:ios:4b0726c964880e0a856b5c',
    messagingSenderId: '69529283541',
    projectId: 'emoti-fb-app',
    storageBucket: 'emoti-fb-app.firebasestorage.app',
    iosBundleId: 'com.example.emotiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpkMADz3nblfh3CAp7L9H9s90SjZygotA',
    appId: '1:69529283541:ios:4b0726c964880e0a856b5c',
    messagingSenderId: '69529283541',
    projectId: 'emoti-fb-app',
    storageBucket: 'emoti-fb-app.firebasestorage.app',
    iosBundleId: 'com.example.emotiApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDC_KvoX8HqLpMusSoPE9yufQRUiKzoa3c',
    appId: '1:69529283541:web:eba1c75250a00e9d856b5c',
    messagingSenderId: '69529283541',
    projectId: 'emoti-fb-app',
    authDomain: 'emoti-fb-app.firebaseapp.com',
    storageBucket: 'emoti-fb-app.firebasestorage.app',
  );
}
