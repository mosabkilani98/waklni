import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakelni/constants/constants.dart';
import 'package:wakelni/widgets/ourbar.dart';

class Program extends StatelessWidget {
  const Program({Key? key}) : super(key: key);

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
                      'برمجة',
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
                child: Wrap(
                  children: [
                    Text(
                      'توفر لك هذه الخدمة',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    Text(
                      'احدث التقنيات',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    Text(
                      'احدث التقنيات',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    Text(
                      'لانشاء تطبيق خاص بك',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    Text(
                      'وعرض منتجاتك',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ],
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
                                    "assets/Under construction-bro.jpg"),
                                Expanded(child: SizedBox()),
                                Text('تطوير مواقع الويب'),
                              ],
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(8.0),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/Under construction-bro.jpg"),
                                Expanded(child: SizedBox()),
                                Text('تطوير تطبيقات الجوال'),
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
                                Text('صيانة المواقع والتطبيقات'),
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
                        left: size.width * 0.24,
                        top: size.height * 0.34,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'طلب الخدمة',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: 350.0,
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
