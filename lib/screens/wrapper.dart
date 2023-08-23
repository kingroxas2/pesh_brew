import 'package:flutter/material.dart';
import 'package:pesh_brew/screens/authenticate/authenticate.dart';
import 'package:pesh_brew/screens/authenticate/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    
    //RETURN EITHER HOME OR AUTHENTICATE WIDGET
    return  Authenticate();
  }
}