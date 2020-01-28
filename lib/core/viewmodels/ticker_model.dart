import 'package:clock/core/enums/viewstate.dart';
import 'package:clock/core/viewmodels/base_model.dart';
// import 'dart:async';
// import 'package:intl/intl.dart';

class TickerModel extends BaseModel { // <-- extends ChangeNotifier
  int _counter = 0;
  Stopwatch _stopwatch = new Stopwatch();

  int get counter => _counter;
  Stopwatch get stopwatch => _stopwatch;

  void increment() {
    setState(ViewState.Busy);
    _counter++;
    notifyListeners();   
    setState(ViewState.Idle);                       // <-- notify listeners
  }

  void startStopwatch() {
    setState(ViewState.Busy);

    // _stopwatch

    setState(ViewState.Idle);
  }

}