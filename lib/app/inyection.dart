import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:zemoga_mobile_test/app/inyection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
