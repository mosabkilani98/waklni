import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: PrimaryColor,
          body: ListView(
            children: [
            SizedBox(
            height: 20.0,
           ),
             Container(
               height: 80,
               child: Row(
                 children: [
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: (){}),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.25,
                ),
                   Column(
                     children: [
                       SizedBox(
                         height: 40.0,
                       ),
                       Image.asset("assets/logo1.png"),
                     ],
                   ),
                   SizedBox(
                     width: size.width * 0.25,
                   ),
                   Column(
                     children: [
                       IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: (){}),
                     ],
                   ),
            ],
          ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Stack(
                  children:[
                    Center(
                      child:Image.asset('assets/BG.png'),
                    ),
                    Positioned(
                      left: size.width *0.35,
                        top: size.height * 0.03,
                        child: Text("تسجيل دخول",style: TextStyle(
                        fontSize: 25.0
                        ),
                        ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                        right: size.width *0.1,
                        left: size.width * 0.1,
                        child: TextContainer(
                      labtext: "البريد الالكتروني",
                      onchange: (){},

                    ),
                    ),
                    Positioned(
                        top: size.height * 0.18,
                        right: size.width *0.1,
                        left: size.width * 0.1,
                        child: TextContainer(
                          labtext: "كلمة السر",
                          onchange: (){},
                        ),
                    ),
                    Positioned(
                      top: size.height * 0.28,
                      left: size.width * 0.1,
                      child: InkWell(
                        onTap:(){
                          Navigator.of(context).pushNamed('/forgetpass');
                        },
                        child: Text("نسيت كلمة السر؟",style: TextStyle(
                          color: Colors.blue[900],
                        ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.33,
                      left: size.width * 0.75,
                      child: InkWell(
                        onTap: (){},
                          child: SvgPicture.asset("assets/Button.svg")),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset('assets/Mobile login-rafiki.svg'),
       ]
        ),
    )
    );
  }
}

