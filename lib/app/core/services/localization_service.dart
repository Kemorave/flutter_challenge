// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../generated/locale_base.dart';
import '../../../localizations_delegate.dart';
import '../../../locator.dart';

class LanguageCodes {
  static const arabicCode = 'ar';
  static const englishCode = 'en';
}

class LocalizationService extends GetxService {
  final _locale_st_key = "_local_st_key";
  final defaultLocale = const Locale(LanguageCodes.arabicCode);
  final locale = LocDelegate();
  Localemain get strings => locale.main;
  Future loadLocale() async {
    await locale.load(Locale(await getCurrentLocal()));
  }

  Future<String> getCurrentLocal() async =>
      await localStorage().getKey(_locale_st_key) ?? defaultLocale.languageCode;
  Future<void> setCurrentLocal(String loc) async {
    await localStorage().setKey(_locale_st_key, loc);
    await locale.load(Locale(loc));
  }
}
