import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home_page.dart';// Replace with your actual Home Page

class AuthScreen extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<AuthScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Function to handle Google Sign-In
  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        // User canceled the sign-in
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      if (userCredential.user != null) {
        // Navigate to Home Page after successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    } catch (error) {
      print("Google Sign-In Error: $error");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign-In failed. Please try again.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            "assets/kids_logo.png", // Replace with your actual background image
            fit: BoxFit.cover,
          ),

          // Overlay for readability
          Container(color: Colors.black.withOpacity(0.3)),

          // Centered Sign-In Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Title
              Text(
                "Welcome to Kid’s Wellness",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),

              SizedBox(height: 40),

              // Google Sign-In Button
              ElevatedButton.icon(
                onPressed: _signInWithGoogle,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                icon: Image.asset("assets/google_logo.png", height: 24), // Add Google logo
                label: Text("Sign in with Google", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 20),

              // Sign Up Button (Google Sign-In)
              TextButton(
                onPressed: _signInWithGoogle,
                child: Text("Sign Up with Google", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),

              SizedBox(height: 50),

              // Motivational Quotes for Kids
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "\"Children are not things to be molded but are people to be unfolded.\" - Jess Lair",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
