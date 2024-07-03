import 'package:disastermanagement/lang.dart';
import 'package:flutter/material.dart';
// import 'package:sos/civilian.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

// import 'package:sos/map2.dart';
void main() {
  runApp(appmain());
}

class appmain extends StatelessWidget {
  const appmain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: 'assests/codered.png',
          duration: 200,
          backgroundColor: Color.fromARGB(255, 220, 48, 48),
          animationDuration: Duration(milliseconds: 4000),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 900,
          nextScreen: LANG()),
    );
  }
}
