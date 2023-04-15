 import 'package:flutter_application_1/app/core/vm.dart';
import 'package:get/get.dart';

import '../../locator.dart';
import 'exceptions/repository_disposed_exception.dart';
import 'failur.dart';
import 'state_enum.dart';

class ExceptionsFilerHelper {
  static final ignoreList = ['Can not emit events to disposed clients'];
}

class BaseController extends GetxController {
  final isBusy = false.obs;
  final state = StateEnum.idle.obs;
  final error = Rx<Failur?>(null);

  Failur getFailurFilter(Object exception) =>
      errorControl().getFailur(exception);

  bool errorIgnoreFilter(Object object) {
    if (object is RepositoryDisposedException) {
      return true;
    }
    return ExceptionsFilerHelper.ignoreList.any((e) => e == object);
  }

  void onError(Object exception,
      {StackTrace? stack, bool changeState = true, bool showSnakBar = true}) {
    if (errorIgnoreFilter(exception)) {
      return;
    }
    Get.printError(
        info:
            "Handled error of type (${exception.runtimeType})\n $exception \n=>$stack");
    stack ??= StackTrace.current;
    final failur = getFailurFilter(exception);
    if (changeState) {
      error.value = failur;
      state.value = StateEnum.error;
    }
    if (showSnakBar) {
      ViewModel.snackBar(
          title: failur.title ?? "خطا غير متوقع",
          message: failur.message ?? "...");
    }
    errorControl().reportError(exception, stack);
  }
}
