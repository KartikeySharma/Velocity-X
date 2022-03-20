import 'package:flutter/material.dart';
import 'package:velocityx/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
    // return StreamProvider<User>.value(
    //   initialData: null,
    //   value: AuthService().user,
    //   child: MaterialApp(
    //     home: Wrapper(),
    //   ),
    // );
  }
}
