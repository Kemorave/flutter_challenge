import 'package:flutter_application_1/locator.dart';
import 'package:get/get.dart';

import '../../data/unit_of_work.dart';

mixin ApiCallMixin on GetLifeCycleBase {
  final api = locate<UnitOfWork>();
  @override
  void onClose() {
    super.onClose();
    api.dispose();
  }
}
