import 'package:flutter/material.dart';
import 'package:playground/screens/form_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("name");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => FormScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Center(
        child: FilledButton(
          onPressed: () {
            logout();
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
