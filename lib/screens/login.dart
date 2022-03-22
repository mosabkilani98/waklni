import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/screens/profile.dart';
import 'package:wakelni/widgets/loginscreen.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: PrimaryColor,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting)
          return Center(child:CircularProgressIndicator());
          else if (snapshot.hasData) {
            return Profile();
          }
          else if (snapshot.hasError) {
            return Center(child: Text("something went wrong"),);
          }
          else
          {return LoginWidget();}
          
        }
      ),
    ));
  }
}
