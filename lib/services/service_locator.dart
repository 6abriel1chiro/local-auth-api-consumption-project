import "./local_auth_service.dart";
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => LocalAuthenticationService());
}
