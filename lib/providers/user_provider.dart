import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';

class UserP with ChangeNotifier {
  String _userPEmail = "" ;

  String get userPEmail => _userPEmail;

  Future<UserCredential> providerLogin() async {
        // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    _userPEmail = googleUser.email;

    // Once signed in, return the UserCredential
    notifyListeners();
    return await FirebaseAuth.instance.signInWithCredential(credential);
}


  Future<void> signOutWithGoogle() async {
    // Trigger the authentication flow
    await FirebaseAuth.instance.signOut();
    _userPEmail = "";
    
    await GoogleSignIn().signOut();
    notifyListeners();
    // Once signed in, return the UserCredential
    
  }


}