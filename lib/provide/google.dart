import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSignInProvider extends ChangeNotifier{
  final googlesinin=GoogleSignIn();
   bool _isSigningIn=false;

   GoogleSignInProvider(){
    _isSigningIn = false;
    
  }

  bool get isSigningIn => _isSigningIn;

  set isSigningIn(bool isSigningIn) {
    _isSigningIn = isSigningIn;
    notifyListeners();
  }

    
  Future googlelogin() async{
    isSigningIn=true;
    final googleUser = await googlesinin.signIn(); 
    if (googleUser==null)return;
     
    else {
    final googleAuth = await googleUser.authentication;
    final credentil=GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );
    await FirebaseAuth.instance.signInWithCredential(credentil);
    isSigningIn =false;
  }
  }
  void Logout()async{
    await googlesinin.disconnect();
    FirebaseAuth.instance.signOut();
  }

}