import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakelni/provide/google.dart';
import 'package:wakelni/network/diohelper.dart';

import 'package:wakelni/screens/changepass.dart';
import 'package:wakelni/screens/checkcode.dart';
import 'package:wakelni/screens/forgetpass.dart';
import 'package:wakelni/screens/home.dart';
import 'package:wakelni/screens/login.dart';
import 'package:wakelni/screens/notifications.dart';
import 'package:wakelni/screens/order.dart';
import 'package:wakelni/screens/paymentsway1.dart';
import 'package:wakelni/screens/paymentsway2.dart';
import 'package:wakelni/screens/services/adminstration.dart';
import 'package:wakelni/screens/services/design.dart';
import 'package:wakelni/screens/services/marketing.dart';
import 'package:wakelni/screens/services/programming.dart';
import 'package:wakelni/screens/register.dart';
import 'package:wakelni/screens/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Main());

}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create: (context)=>GoogleSignInProvider(), 
    child: MaterialApp(
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
          '/order': (context) => Order(),
          '/design': (context) => Design(),
          '/marketing': (context) => Marketing(),
          '/admins': (context) => Adminstration(),
          '/order':(context)=>Order(),
        }));
  }
 