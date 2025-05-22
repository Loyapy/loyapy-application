import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/firebase_auth_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthService firebaseAuthService;

  AuthRepositoryImpl(this.firebaseAuthService);

  @override
  Future<User?> signInWithEmail(String email, String password) {
    return firebaseAuthService.signInWithEmail(email, password);
  }

  @override
  Future<User?> signInWithGoogle() {
    return firebaseAuthService.signInWithGoogle();
  }

  @override
  Future<void> signOut() {
    return firebaseAuthService.signOut();
  }

  @override
  Stream<User?> get authStateChanges => firebaseAuthService.authStateChanges;
}
