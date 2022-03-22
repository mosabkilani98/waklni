import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/screens/home.dart';
 class Splash extends StatelessWidget {
  
  const Splash({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
       body:SplashScreenView(
        navigateRoute: HOME_PAGE(),
        duration: 3,
        imageSrc:'assets/logoo.png',
        imageSize: 300,
        backgroundColor: PrimaryColor,
      ),
    );
  }
}