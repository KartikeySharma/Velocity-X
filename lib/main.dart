import 'package:flutter/material.dart';
import 'package:velocityx/screens/Home/home.dart';
import 'package:velocityx/screens/authenticate/sign_in.dart';
import 'package:velocityx/screens/metadata/meta_data.dart';
import 'package:velocityx/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/SignIn',

    routes: {
      '/wrapper':(context) => Wrapper(),
      '/SignIn':(context) => SignIn(),
      '/home':(context) => Home(),
      '/MetaData':(context) => MetaDataPage(),
    },

  ));
}
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Wrapper(),
//     );
//     // return StreamProvider<User>.value(
//     //   initialData: null,
//     //   value: AuthService().user,
//     //   child: MaterialApp(
//     //     home: Wrapper(),
//     //   ),
//     // );
//   }
// }
