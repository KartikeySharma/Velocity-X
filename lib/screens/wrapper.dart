import 'package:flutter/material.dart';
import 'package:velocityx/screens/Home/home.dart';
import 'package:velocityx/screens/authenticate/sign_in.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget
    return SignIn();
  }
}
