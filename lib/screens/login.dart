import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';
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
        Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/BG.png',
                width: size.width * 0.9,
                height: size.height * 0.45,
              ),
            ),
            Positioned.fill(
              left: size.width * 0.35,
              top: size.height * 0.03,
              child: Text(
                "تسجيل دخول",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Positioned(
              top: size.height * 0.08,
              right: size.width * 0.1,
              left: size.width * 0.1,
              child: TextContainer(
                labtext: "البريد الالكتروني",
                onchange: () {},
              ),
            ),
            Positioned(
              top: size.height * 0.18,
              right: size.width * 0.1,
              left: size.width * 0.1,
              child: TextContainer(
                labtext: "كلمة السر",
                onchange: () {},
              ),
            ),
            Positioned(
              top: size.height * 0.28,
              left: size.width * 0.1,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/forgetpass');
                },
                child: Text(
                  "نسيت كلمة السر؟",
                  style: TextStyle(
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.33,
              left: size.width * 0.75,
              child: InkWell(
                  onTap: () {}, child: SvgPicture.asset("assets/Button.svg")),
            ),
          ],
        ),
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
            onPressed: () {},
          ),
        ])
      ]),
    ));
  }
}
