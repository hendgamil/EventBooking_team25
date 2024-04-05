import 'dart:async';
import 'package:flutter/material.dart';

import '../../onboarding1/view/onboarding1.dart';

class SplashScreen extends StatelessWidget {

 const SplashScreen({super.key});

  static const routeName = "Splash Screen";

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, Event.routeName);
    });

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_1.png'),
            const SizedBox(width: 7,),
            Image.asset('assets/images/splash_2.png'),
          ],
        ),
      ),

    );
  }
}
