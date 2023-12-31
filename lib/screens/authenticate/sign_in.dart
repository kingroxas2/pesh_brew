import 'package:flutter/material.dart';
import 'package:pesh_brew/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[400],
        elevation: 0.0,
        title: const Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
        child: ElevatedButton(
          child: const Text('Sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();

            if (result == null) {
              print('error signing in');
            } else {
              print('You signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
