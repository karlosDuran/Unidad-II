import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Instancia global de FirebaseAuth
final FirebaseAuth auth = FirebaseAuth.instance;

class FirebaseService {
  static Future<void> initialize() async {
    await Firebase.initializeApp();
  }
}
