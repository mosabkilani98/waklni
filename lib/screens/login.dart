import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/provide/google.dart';
import 'package:wakelni/widgets/textfield.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: PrimaryColor,
      body: ListView(children: [
        SizedBox(
          height: size.height * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo1.png'),
          ],
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
       LoginScreen(),
        SvgPicture.asset('assets/Mobile login-rafiki.svg'),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SignInButton(
            Buttons.Facebook,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {},
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SignInButton(
            Buttons.Google,
            shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              final provider=Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.googlelogin();
            },
          ),
        ])
      ]),
    ));
  }
}
