import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationService extends GetxService {
  Future<T?>? goTo<T>(String path, {Map<String, dynamic>? args}) {
    return Get.toNamed<T>(path, arguments: args);
  }

  void goBack<T>({T? result}) {
    Get.back(result: result);
  }

  Future<T?>? dialog<T>(Widget widget,
      {Map<String, dynamic>? args, bool dismisable = true}) {
    return Get.dialog<T>(widget,
        arguments: args, barrierDismissible: dismisable);
  }
}
