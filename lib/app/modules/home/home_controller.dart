import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/app/data/model/user_model.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:get/get.dart';

import '../../core/mixins/api_call_mixin.dart';

class HomeController extends GetxController with ApiCallMixin {
  final user = Rx<UserModel?>(null);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isBusy = false.obs;
  @override
  void onInit() async {
    super.onInit();
    user.value = await userService().getUser();
  }

  Future<void> login() async {
    try {
      isBusy.value = true;
      var res = await api.userRepository
          .login(emailController.text, emailController.text);
      await userService().login(res);
      user.value = await userService().getUser();
    } catch (e) {
      print(e);
    } finally {
      isBusy.value = false;
    }
  }

  Future<void> logout() async {
    await userService().logout();
    user.value = null;
  }

  signup() async {
    try {
      isBusy.value = true;
      var res = await api.userRepository.register("test", "test");
      if (res.isOk) {
        Get.defaultDialog(
            title: "registered", content: Text(res.bodyString ?? 'body null'));
      }
    } catch (e) {
    } finally {
      isBusy.value = false;
    }
  }

  getData() async {
    try {
      isBusy.value = true;
      var res = await api.userRepository.getUserContent();
      if (res?.isNotEmpty == true) {
        Get.defaultDialog(title: "got", content: Text(res ?? 'body null'));
      }
    } catch (e) {
    } finally {
      isBusy.value = false;
    }
  }
}
