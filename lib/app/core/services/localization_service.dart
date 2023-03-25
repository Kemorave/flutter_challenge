import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:get/get.dart';

import '../../../localizations_delegate.dart';

class LocalizationService extends GetxService {
  final _locale_st_key = "_local_st_key";

  final locale = LocDelegate();
  Future loadLocale() async {
    await locale.load(Locale(await getCurrentLocal()));
  }

  Future<String> getCurrentLocal() async =>
      await localStorage().getKey(_locale_st_key) ?? 'en';
  Future<void> setCurrentLocal(String loc) async {
    await localStorage().setKey(_locale_st_key, loc);
    await locale.load(Locale(loc));
  }
}
