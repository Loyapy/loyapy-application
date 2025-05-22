import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<AppStarted>((event, emit) async {
      emit(AuthLoading());
      await emit.forEach(authRepository.authStateChanges, onData: (user) {
        return user != null ? Authenticated(user) : Unauthenticated();
      });
    });

    on<SignInWithGoogle>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authRepository.signInWithGoogle();
        emit(user != null ? Authenticated(user) : Unauthenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    on<SignInWithEmail>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authRepository.signInWithEmail(event.email, event.password);
        emit(user != null ? Authenticated(user) : Unauthenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    on<SignOut>((event, emit) async {
      await authRepository.signOut();
      emit(Unauthenticated());
    });
  }
}
