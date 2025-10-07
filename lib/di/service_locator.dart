import 'package:get_it/get_it.dart';
import 'package:playwithstates/B/counter_provider.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerFactory<CounterProvider>(() => CounterProvider());
}
