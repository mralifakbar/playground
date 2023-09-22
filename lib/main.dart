import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screen/onboarding_screen.dart';
import 'package:playground/screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: OnboardingScreen(),
    );
  }
}
