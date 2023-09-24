import 'package:flutter/material.dart';

import 'onBoardingScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen(){
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> onBoardingScreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange[500],
        child: Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('258.jpg'),
            radius: 100,
          ),
        ),
      ),
    );
  }
}