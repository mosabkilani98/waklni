import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/ourbar.dart';
import 'package:wakelni/widgets/textfield.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return OurBar();
                          });
                    }),
                SizedBox(
                  width: size.width * 0.25,
                ),
                Text(
                  'نموذج الطلب',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                Expanded(child: SizedBox()),
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 10.0,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                color: Color(0Xff893070).withOpacity(0.45),
                height: size.height * 0.7,
                width: size.width * 0.8,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo1.png",
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: TextContainer(
                        labtext: 'الاسم ',
                        onchange: () {},
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: TextContainer(
                          labtext: 'البريد الالكتروني', onchange: () {}),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: TextContainer(
                          labtext: 'رقم الموبايل', onchange: () {}),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        minLines: 3,
                        maxLines: 7,
                        showCursor: true,
                        decoration: InputDecoration(
                            labelText: 'وصف الخدمة',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, onPrimary: Colors.black),
                        child: Text('اطلب')),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
