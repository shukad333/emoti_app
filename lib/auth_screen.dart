import 'package:emoti_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                UserCredential userCredential = await signInWithGoogle();
                if (userCredential.user != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
              child: Text('Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId: "<client-id>.apps.googleusercontent.com", // Add this line
    scopes: ['email'],
  );
  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  return await FirebaseAuth.instance.signInWithCredential(credential);
}