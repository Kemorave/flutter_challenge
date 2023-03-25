import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/app/core/services/api/local_data_service.dart';
import 'package:flutter_application_1/app/core/services/api/navigation_service.dart';
import 'package:flutter_application_1/app/core/services/localization_service.dart';
import 'package:flutter_application_1/app/core/services/user_data_service.dart';
import 'package:get_it/get_it.dart';

import 'app/data/unit_of_work.dart';

GetIt _locator = GetIt.I;
T locate<T extends Object>() => _locator.get<T>();
void singleTone<T extends Object>(T obj) => _locator.registerSingleton(obj);
void factoryRegister<T extends Object>(T Function() obj) =>
    _locator.registerFactory(obj);
NavigationService navigation() => locate<NavigationService>();
LocalDataService localStorage() => locate<LocalDataService>();
UserDataService userService() => locate<UserDataService>();
LocalizationService language() => locate<LocalizationService>();
void initLocator() {
  singleTone(LocalDataService());
  singleTone(LocalizationService());
  singleTone(NavigationService());
  singleTone(UserDataService());
  factoryRegister<UnitOfWork>(
      () => kDebugMode ? UnitOfWork.staging() : UnitOfWork.production());
}
