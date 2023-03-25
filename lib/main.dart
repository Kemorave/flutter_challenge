import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:get/get.dart';

import 'app/core/bindings/application_bindings.dart';
import 'app/routes/app_pages.dart';
import 'localizations_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<GetMaterialApp> getApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  //language().locale.locBase.initAll();
  await language().loadLocale();
  return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Your App Title',
    initialBinding: ApplicationBindings(),
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    supportedLocales: [Locale('en'), Locale('ar')],
    locale: Locale(await language().getCurrentLocal()),
    fallbackLocale: const Locale('en'),
    localizationsDelegates: [
      language().locale,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
  );
}

void main() async {
  runApp(await getApp());
}
