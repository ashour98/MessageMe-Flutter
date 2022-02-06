import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:messageme/Screen/Chat.dart';
import 'package:messageme/Screen/Sign_In.dart';
import 'package:messageme/Screen/Sign_Up.dart';
import 'package:messageme/Screen/WelcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth= FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: _auth.currentUser !=null ? Chat.screenRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SignIn.screenRoute: (context) => SignIn(),
        SignUp.screenRoute: (context) => SignUp(),
        Chat.screenRoute: (context) => Chat(),
      },
    );
  }
}

