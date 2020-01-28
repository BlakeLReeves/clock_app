import 'package:get_it/get_it.dart';
import 'core/viewmodels/clock_model.dart';
import 'core/viewmodels/ticker_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => ClockModel());
  locator.registerFactory(() => TickerModel());
}