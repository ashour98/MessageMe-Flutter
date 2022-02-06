import 'package:flutter/material.dart';
import 'package:messageme/Screen/Sign_In.dart';
import 'package:messageme/Screen/Sign_Up.dart';
import 'package:messageme/Widgets/Mu_Button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = "WelcomeScreen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign In',
              onPress: () {
                Navigator.pushNamed(context, SignIn.screenRoute,);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Register',
              onPress: () {
                Navigator.pushNamed(context, SignUp.screenRoute,);
              },
            ),
          ],
        ),
      ),
    );
  }
}
