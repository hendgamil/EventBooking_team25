
import 'package:eventbooking_team25/ui/onboarding1/view/onboarding1.dart';
import 'package:eventbooking_team25/ui/splash_screen/view/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName ,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        Event.routeName : (context) => Event(),
      },
    );
  }
}
