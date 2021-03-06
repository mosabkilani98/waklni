import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wakelni/provide/google.dart';
import 'package:wakelni/screens/homep.dart';
import 'package:wakelni/screens/loggedin.dart';
import 'package:wakelni/screens/offers.dart';
import 'package:wakelni/screens/phone.dart';
import 'package:wakelni/screens/profile.dart';
import 'package:wakelni/screens/services/services.dart';
import 'package:wakelni/widgets/bottombar/fancy_bottom_navigation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../constants/constants.dart';

class HOME_PAGE extends StatefulWidget {
  static String routeName = "\home_page";
  const HOME_PAGE({Key? key}) : super(key: key);

  @override
  _HOME_PAGEState createState() => _HOME_PAGEState();
}

class _HOME_PAGEState extends State<HOME_PAGE> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(selectedItem),
      bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home_outlined, title: "Home"),
            TabData(iconData: Icons.local_offer_outlined, title: "Offers"),
            TabData(iconData: Icons.settings_outlined, title: "Services"),
            TabData(iconData: Icons.call_outlined, title: "contact"),
            TabData(iconData: Icons.person_outline, title: "Profile")
          ],
          inactiveIconColor: PrimaryColor,
          textColor: Colors.grey,
          activeIconColor: Colors.white,
          circleColor: PrimaryColor,
          barBackgroundColor: Colors.white,
          initialSelection: 0,
          onTabChangedListener: (int i) {
            setState(() {
              selectedItem = i;
            });
          }),
    );
  }

  _getPage(int i) {
    switch(i) { 
   case 0: { 
     return homep();  
   }
   case 1:{
      return Offers() ;
   }
  case 2:{
        return Services();
      }
  case 4:{
  StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context, snapshot) {
           if (snapshot.hasData) {
            return Profile();
          }
          else
          return Loggedin()  ;
         }
        );
       
  }
   
  }
}}