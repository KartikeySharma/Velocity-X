import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocityx/services/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/loginBg.png'),
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
          top: 570,
          left: 30,
          right: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    fontFamily: 'Segoe',
                    fontSize: 38,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF78D6FF)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "VelocityX next gen document handler ",
                style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/home');
                  _auth.signInWithGoogle();
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 15, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Login with google',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), primary: Color(0xFF78D6FF)),
              )
            ],
          ),
        )
      ],
    ));
  }
}
