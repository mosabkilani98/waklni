import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSignInProvider extends ChangeNotifier{
  final googlesinin=GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user=>_user!;
  Future googlelogin() async{
    final googleUser = await googlesinin.signIn(); 
    if (googleUser==null)return;
    _user=googleUser; 

    final googleAuth = await googleUser.authentication;
    final credentil=GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );
    await FirebaseAuth.instance.signInWithCredential(credentil);
    notifyListeners();
  }


}