import 'package:firebase_core/firebase_core.dart';

class InstaEatsCore {
  InstaEatsCore._();

  static final InstaEatsCore instance = InstaEatsCore._();

  static bool _isInitialized = false;

  static Future<void> initializeApp({FirebaseOptions? options}) async {
    if (_isInitialized) return;

    await Firebase.initializeApp(options: options);
    _isInitialized = true;
  }
}
