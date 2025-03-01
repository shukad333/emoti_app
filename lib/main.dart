import 'package:emoti_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firebase_options.dart'; // Ensure this file is generated


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Use FirebaseOptions

    );
    print("🔥 Firebase initialized successfully!");
  }
  catch(e) {
    print("❌ Firebase init error: $e");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, // Light blue theme
        scaffoldBackgroundColor: Colors.lightBlue[50], // Light background
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white, // White text/icons
          elevation: 2, // Light shadow
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black87), // Text color
        ),
      ),
      home: SplashScreen(),
    );
  }
}




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home Page - Work in Progress')),
    );
  }
}
