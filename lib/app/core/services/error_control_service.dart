import 'dart:async';
import 'dart:io';

import '../../../locator.dart'; 
import 'package:get/get.dart';

import '../failur.dart';

class ErrorControlService extends GetxService {
  Failur getFailur(Object error) {
    if (error is HttpException) {
      return Failur.fromError(error, "Network");
    }
    return Failur.fromError(error, "Unkown");
  }

  bool isFilteredError(error) {
    if (error is WebSocketException ||
        error is HttpException ||
        error is TimeoutException ||
        error is SocketException) return true;
    return false;
  }

  void reportError(Object exception, StackTrace stack) async {
    if (isFilteredError(exception)) {
      return;
    }
    try {
      if (await userService().isLogedIn()) {
        // await FirebaseCrashlytics.instance
        //     .setUserIdentifier(userService().user.id.toString());
      }
      //await FirebaseCrashlytics.instance.recordError(exception, stack);

      // ignore: empty_catches
    } catch (e) {}
  }
}
