import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';

class OurBar extends StatefulWidget {
  @override
  _OurBarState createState() => _OurBarState();
}

class _OurBarState extends State<OurBar> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: PrimaryColor,
        title: Image.asset("assets/33.png"),
        content:Container(
          height: 300,
          child: Column(children: [
            Container(
              height: 60.0,
              child: Material(
                shadowColor: Colors.grey,
                color: Colors.grey[400],
                elevation: 7.0,

                child: Center(
                  child: Text('صندوق الوارد',style: TextStyle(color: Colors.white),),

                ),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              height: 60.0,
              child: Material(

                shadowColor: Colors.grey,
                color: Colors.grey[400],
                elevation: 7.0,
                child: Center(
                  child: Text('تغيير كلمة السر',style: TextStyle(color: Colors.white),),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60.0,
              child: Material(
                shadowColor: Colors.grey,
                color: Colors.grey[400],
                elevation: 7.0,
                child: GestureDetector(onTap: (){},
                  child: Center(
                    child: Text('تسجيل الخروج',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            )
          ],),
        )
    );
  }
}
