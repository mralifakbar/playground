import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormController extends GetxController {
  TextEditingController nameController = TextEditingController();
  final isNameValid = false.obs;

  void setName(String name) async {
    print(name);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", name);
  }

  void redirect() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("name")) {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => RootScreen(),
      //   ),
      // );
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    redirect();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
