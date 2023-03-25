import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/generated/locale_base.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.user.value?.email ?? "No user loggedin",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              if (controller.isBusy.value)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                ),
              if (controller.user.value != null) userWidget(),
              if (controller.user.value == null) loginWidget(),
              if (controller.user.value == null) signupWidget(),
              ElevatedButton(
                  onPressed: () async {
                    final ll = Get.locale?.languageCode == "en"
                        ? Locale('ar')
                        : Locale('en');
                    await language().setCurrentLocal(ll.languageCode);
                    await Get.updateLocale(ll);
                  },
                  child: Text(language().locale.main.save +
                      "\n" +
                      language().locale.lang))
            ],
          );
        }),
      ),
    );
  }

  Widget userWidget() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(controller.user.value?.name ?? ''),
          ElevatedButton(
              onPressed: () => controller.logout(), child: Text("Logout")),
          ElevatedButton(
              onPressed: () => controller.getData(), child: Text("Get data")),
        ]),
      ),
    );
  }

  Widget signupWidget() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async => await controller.signup(),
                    child: Text("signup"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginWidget() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.emailController,
                  decoration: InputDecoration(hintText: "Email"),
                ),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                ElevatedButton(
                    onPressed: () async => await controller.login(),
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
