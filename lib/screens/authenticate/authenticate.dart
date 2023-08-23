import 'package:flutter/material.dart';
import 'package:pesh_brew/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SignIn(),
      ),
    );
  }
}