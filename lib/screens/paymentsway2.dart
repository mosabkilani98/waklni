import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/textfield.dart';

class Payments2 extends StatefulWidget {
  const Payments2({Key? key}) : super(key: key);

  @override
  _Payments2State createState() => _Payments2State();
}

class _Payments2State extends State<Payments2> {
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
                Text(
                  'طريقة الدفع',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child:
                  TextContainer(labtext: 'اسم حامل البطاقة', onchange: () {}),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextContainer(
                labtext: 'رقم بطاقة الائتمان',
                onchange: () {},
              ),
            ),
            Row(
              children: [
                SizedBox(width: size.width * 0.05),
                SizedBox(
                  width: size.width * 0.4,
                  child: TextContainer(
                    labtext: 'تاريخ انتهاء الصلاحية',
                    onchange: () {},
                  ),
                ),
                SizedBox(
                  width: size.width * 0.08,
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: TextContainer(
                    labtext: 'الرمز',
                    onchange: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Center(
              child: RaisedButton(
                onPressed: () {},
                child: Text('حفظ'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
