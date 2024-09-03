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
    apiKey: 'AIzaSyDccsF8asvgZtl4QO2aRbzwIlLNEO689Kg',
    appId: '1:399751159288:web:ae277623bc08b50282ca0d',
    messagingSenderId: '399751159288',
    projectId: 'chatapppro-3065d',
    authDomain: 'chatapppro-3065d.firebaseapp.com',
    storageBucket: 'chatapppro-3065d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJZDTLS7MNIKxAg6i3AX89rRJB1nRsfC4',
    appId: '1:399751159288:android:01fdb61d382c10cd82ca0d',
    messagingSenderId: '399751159288',
    projectId: 'chatapppro-3065d',
    storageBucket: 'chatapppro-3065d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAD_hCmQkZjRhwoVkxY76aYOSilpsCioFk',
    appId: '1:399751159288:ios:1cb9dd537bce2a1682ca0d',
    messagingSenderId: '399751159288',
    projectId: 'chatapppro-3065d',
    storageBucket: 'chatapppro-3065d.appspot.com',
    iosBundleId: 'com.example.chatAppPro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAD_hCmQkZjRhwoVkxY76aYOSilpsCioFk',
    appId: '1:399751159288:ios:1cb9dd537bce2a1682ca0d',
    messagingSenderId: '399751159288',
    projectId: 'chatapppro-3065d',
    storageBucket: 'chatapppro-3065d.appspot.com',
    iosBundleId: 'com.example.chatAppPro',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDccsF8asvgZtl4QO2aRbzwIlLNEO689Kg',
    appId: '1:399751159288:web:81c4b92c736dd9fe82ca0d',
    messagingSenderId: '399751159288',
    projectId: 'chatapppro-3065d',
    authDomain: 'chatapppro-3065d.firebaseapp.com',
    storageBucket: 'chatapppro-3065d.appspot.com',
  );
}
