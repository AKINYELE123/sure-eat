import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sureat_project/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> Onboarding_Screen()), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              const TextSpan(
                  text: "Sur", style: TextStyle(color: Colors.white, fontSize: 26) ),
              TextSpan(text: "Eat", style: TextStyle(color: purple, fontSize: 26)),
            ])),
      ),
    );
  }
}
