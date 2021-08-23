import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakelni/constants/constants.dart';

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
           )
          ,
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
                child: Center(
                  child: ClipPath(
                    clipper: Backgroundclipper(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        width: size.width  * 0.8,
                        height: size.height * 0.6 ,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white,Colors.white],
                            begin: Alignment.bottomLeft,
                            end:Alignment.topRight,

                          )
                        ),
                      ),
                    ),
                  ),
                ),
              )
       ]
        ),
    )
    );
  }
}
class Backgroundclipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size){
    var  path = Path();
    path.lineTo(0, size.height *0.5 );
    path.lineTo(size.width, size.height-75);

    path.lineTo(size.height, size.width*0.02);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return true;
  }
}
