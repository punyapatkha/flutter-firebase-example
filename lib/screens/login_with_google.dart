
import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import '../providers/user_provider.dart';

class LoginWithGoogle extends StatefulWidget {
  const LoginWithGoogle({Key? key}) : super(key: key);

  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  // String userEmail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login With Google"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("User Email: "), Text(context.watch<UserP>().userPEmail)],
              ),
            ),
            

            

             Visibility(
  visible: context.watch<UserP>().userPEmail == "", // bool
  child: ElevatedButton(
              onPressed:() => context.read<UserP>().providerLogin()
              // () async {await signInWithGoogle();
              // setState(() {});
            // }
            , child: Text("Login with google")), // widget to show/hide
            ),
            Visibility(
  visible: context.watch<UserP>().userPEmail != "", // bool
  child: ElevatedButton(
              onPressed: () => context.read<UserP>().signOutWithGoogle(),
//                () async {
//               await signOutWithGoogle();
//               // await FirebaseAuth.instance.signOut();
//               // userEmail = "";
//               // await GoogleSignIn().signOut();
//               setState(() { });
// },
             
             child: Text("Logout")), // widget to show/hide
            ),
          ],
          
        ),
      ),
    );
  }

 

}