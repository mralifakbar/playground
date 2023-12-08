import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:playground/app/routes/app_pages.dart';
import 'package:playground/screens/root_screen.dart';

import '../controllers/form_controller.dart';

class FormView extends GetView<FormController> {
  const FormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                  width: 200,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Name"),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          errorText: controller.isNameValid.value
                              ? null
                              : "Name tidak valid",
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            // controller.isNameValid.value =
                            //     controller.nameController.text.isNotEmpty;

                            // if (controller.isNameValid.value) {
                            //   controller
                            //       .setName(controller.nameController.text);
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (builder) => RootScreen(),
                            //     ),
                            //   );
                            // }
                            Get.toNamed(Routes.COUNTER);
                          },
                          child: Text("Daftar"),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Kembali"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
