import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loyapy/presentation/auth/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onEmailLoginPressed(BuildContext context) {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    context.read<AuthBloc>().add(SignInWithEmail(email, password));
  }

  void _onGoogleLoginPressed(BuildContext context) {
    context.read<AuthBloc>().add(SignInWithGoogle());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Welcome to Loyapy',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 32),

                    // Email Field
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),

                    // Password Field
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),

                    // Email Login Button
                    ElevatedButton(
                      onPressed: () => _onEmailLoginPressed(context),
                      child: const Text('Login with Email'),
                    ),
                    const SizedBox(height: 16),

                    // Google Sign-In
                    ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text('Login with Google'),
                      onPressed: () => _onGoogleLoginPressed(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
