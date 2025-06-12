import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD25n_QFr3YxDqPl8BQtuV5Qd8xz6VjKEw",
            authDomain: "nawng-academy-8bb16.firebaseapp.com",
            projectId: "nawng-academy-8bb16",
            storageBucket: "nawng-academy-8bb16.firebasestorage.app",
            messagingSenderId: "175898091193",
            appId: "1:175898091193:web:e84ad0d9cdb16e80ae8568",
            measurementId: "G-T9RP5ZYHYY"));
  } else {
    await Firebase.initializeApp();
  }
}
