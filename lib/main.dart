import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/core/bindings/application_bindings.dart';
import 'app/core/theme/app_colors.dart';
import 'app/core/theme/app_theme_data.dart';
import 'app/routes/app_pages.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart'
    show
        GlobalCupertinoLocalizations,
        GlobalMaterialLocalizations,
        GlobalWidgetsLocalizations;

Future<ScreenUtilInit> getApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  //language().locale.locBase.initAll();
  await language().loadLocale();
  final locale = Locale(await language().getCurrentLocal());
  return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, _) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Your App Title',
          initialBinding: ApplicationBindings(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          defaultTransition: Transition.native,
          supportedLocales: [const Locale('en'), language().defaultLocale],
          theme: ThemeData(
              primaryColor: AppColors.primaryColor,
              fontFamily: 'Cairo',
              textTheme: AppThemeData.textTheme,
              snackBarTheme: const SnackBarThemeData(
                  actionTextColor: Colors.red,
                  backgroundColor: Colors.black,
                  contentTextStyle: TextStyle(color: Colors.white),
                  elevation: 20)),
          locale: locale,
          fallbackLocale: language().defaultLocale,
          localizationsDelegates: [
            language().locale,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        );
      });
}

void main() async {
  runApp(await getApp());
}
