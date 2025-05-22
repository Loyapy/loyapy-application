import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppStarted extends AuthEvent {}

class SignInWithGoogle extends AuthEvent {}

class SignInWithEmail extends AuthEvent {
  final String email;
  final String password;

  SignInWithEmail(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class SignOut extends AuthEvent {}
