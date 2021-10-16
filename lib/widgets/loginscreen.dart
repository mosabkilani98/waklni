import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakelni/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
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
    );
  }
}
