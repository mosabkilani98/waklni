import 'package:flutter/material.dart';
import 'package:wakelni/screens/changepass.dart';
import 'package:wakelni/screens/checkcode.dart';
import 'package:wakelni/screens/forgetpass.dart';
import 'package:wakelni/screens/home.dart';
import 'package:wakelni/screens/login.dart';
import 'package:wakelni/screens/notifications.dart';
import 'package:wakelni/screens/order.dart';
import 'package:wakelni/screens/paymentsway1.dart';
import 'package:wakelni/screens/paymentsway2.dart';
import 'package:wakelni/screens/programming.dart';
import 'package:wakelni/screens/register.dart';
import 'package:wakelni/screens/services.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HOME_PAGE(),
        routes: {
          '/services': (context) => Services(),
          '/login': (context) => LoginScreen(),
          '/forgetpass': (context) => ForgetPass(),
          '/register': (context) => Register(),
          '/check': (context) => CheckCode(),
          '/change': (context) => Changepass(),
          '/notificatios': (context) => Notificatios(),
          '/payments1': (context) => Payments(),
          '/payments2': (context) => Payments2(),
          '/program': (context) => Program(),
          '/order':(context)=>Order(),
        });
  }
}
