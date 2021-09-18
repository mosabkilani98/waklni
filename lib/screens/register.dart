import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/textfield.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryColor,
        body: ListView(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo1.png'),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/7.png',
                    width: size.width * 0.9,
                    height: size.height * 0.67,
                  ),
                ),
                Positioned(
                  left: size.width * 0.4,
                  top: size.height * 0.03,
                  child: Text(
                    "تسجيل",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Positioned(
                  top: size.height * 0.08,
                  right: size.width * 0.1,
                  left: size.width * 0.1,
                  child: TextContainer(
                    labtext: " الاسم الكامل",
                    onchange: () {},
                  ),
                ),
                Positioned(
                  top: size.height * 0.17,
                  right: size.width * 0.1,
                  left: size.width * 0.1,
                  child: TextContainer(
                    labtext: "رقم الهاتف",
                    onchange: () {},
                  ),
                ),
                Positioned(
                  top: size.height * 0.26,
                  right: size.width * 0.06,
                  left: size.width * 0.1,
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.35,
                        height: 75,
                        child: TextContainer(
                          labtext: "البريد الالكتروني",
                          onchange: () {},
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      SizedBox(
                        width: size.width * 0.4,
                        height: 75,
                        child: TextContainer(
                          labtext: "اسم المستخدم",
                          onchange: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: size.height * 0.35,
                  right: size.width * 0.1,
                  left: size.width * 0.1,
                  child: TextContainer(
                    labtext: "تاريخ الولادة",
                    onchange: () {},
                  ),
                ),
                Positioned(
                  top: size.height * 0.44,
                  right: size.width * 0.1,
                  left: size.width * 0.1,
                  child: TextContainer(
                    labtext: "كلمة المرور",
                    onchange: () {},
                  ),
                ),
                Positioned(
                  top: size.height * 0.56,
                  left: size.width * 0.77,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/check');
                      },
                      child: SvgPicture.asset("assets/Button.svg")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'لديك حساب ؟',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}
