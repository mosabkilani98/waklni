import 'package:flutter/material.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/ourbar.dart';

class Adminstration extends StatefulWidget {
  const Adminstration({Key? key}) : super(key: key);

  @override
  _AdminstrationState createState() => _AdminstrationState();
}

class _AdminstrationState extends State<Adminstration> {
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
                Image.asset(
                  "assets/logo1.png",
                  color: Colors.white,
                ),
                SizedBox(
                  width: size.width * 0.25,
                ),
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width,
              height: size.height * 0.1,
              color: Colors.white30,
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'ادارة',
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Text(
                    'وكلنا بحساباتك الاجتماعية ولا تشيل هم',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                width: size.width * 0.7,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Column(
                        children: [
                          Card(
                            margin: EdgeInsets.all(8.0),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/Website designer-amico.jpg"),
                                Expanded(child: SizedBox()),
                                Text('ندير حسابات التواصل باحترافية'),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(8.0),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/App development-rafiki.jpg"),
                                Expanded(child: SizedBox()),
                                Text('نتواصل مع كافة المتابعين'),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(8.0),
                            clipBehavior: Clip.antiAlias,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/Under construction-bro.jpg"),
                                Expanded(child: SizedBox()),
                                Text('نسوق وننشر البوستات '),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        left: size.width * 0.21,
                        top: size.height * 0.3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/order');
                          },
                          child: Text('طلب الخدمة'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff504595 - 0xffC21D4D),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        )),
                    SizedBox(
                      height: 350.0,
                    )
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
