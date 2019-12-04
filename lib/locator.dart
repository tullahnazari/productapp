

import 'package:get_it/get_it.dart';
import 'package:productsapp/core/services/api.dart';
import 'package:productsapp/core/viewmodels/CRUDModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton(() => CRUDModel()) ;
}