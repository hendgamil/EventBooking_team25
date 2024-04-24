import 'package:eventbooking_team25/UI/Sign_up/view/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'UI/Sign_in/View/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Signin_Screen.routeName,
        routes: {
          Signin_Screen.routeName: (context) => Signin_Screen(),
          SignUp_screen.routeName: (context) => SignUp_screen(),
        });
  }
}
