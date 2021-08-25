import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckCode extends StatefulWidget {
  @override
  _CheckCodeState createState() => _CheckCodeState();
}

class _CheckCodeState extends State<CheckCode> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child:Scaffold(
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
                      child:Image.asset('assets/2.png'),
                    ),
                    Positioned(
                      left: size.width *0.45,
                      top: size.height * 0.03,
                      child: Text("تحقق",style: TextStyle(
                          fontSize: 25.0
                      ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.11,
                      left: size.width * 0.42,
                      child:Text('ادخل رمزك هنا',style: TextStyle(
                        color: Colors.grey
                      ),)
                    ),
                    Positioned(
                      top: size.height * 0.15,
                      left: size.width * 0.25,
                        child: SizedBox(
                          width: size.width * 0.5,
                          height: 50,
                          child: PinCodeTextField(
                            pinTheme: PinTheme(
                              activeColor: Colors.grey,
                              activeFillColor: Colors.grey,
                              disabledColor: Colors.grey,
                              inactiveColor: Colors.grey
                            ),
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            appContext: context,
                            length: 4,
                            onChanged: (value){},
                          ),
                        ),
                    ),
                    Positioned(
                        top: size.height * 0.25,
                        left: size.width * 0.51,
                        child: Text('لم تستلم الرمز؟')
                    ),
                    Positioned(
                        top: size.height * 0.25,
                        left: size.width * 0.26,
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed('/register');
                          },
                          child: Text('اعادة ارسال الرمز',style: TextStyle(
                            color: Colors.blue[900],
                          ),),
                        )
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
              SvgPicture.asset('assets/Two factor authentication-rafiki.svg'),
            ],
          ),
        ),
    );
  }
}
