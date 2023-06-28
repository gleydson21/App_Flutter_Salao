import 'package:firebase_auth/firebase_auth.dart';

class AutenticacaoService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get currentUser {
    return _auth.authStateChanges();
  }

  Future<User?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Usuário não encontrado para o e-mail fornecido.');
      } else if (e.code == 'wrong-password') {
        print('Senha incorreta fornecida para o usuário.');
      }
      return null;
    }
  }

  Future<void> signOut() async {
    return _auth.signOut();
  }
}
