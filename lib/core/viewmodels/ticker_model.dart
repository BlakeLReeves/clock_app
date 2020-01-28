import 'package:clock/core/enums/viewstate.dart';
import 'package:clock/core/viewmodels/base_model.dart';
import 'dart:async';
// import 'package:intl/intl.dart';

class TickerModel extends BaseModel { // <-- extends ChangeNotifier
  
  Stopwatch _stopwatch = new Stopwatch();
  bool _startIsPressed = true;
  bool _stopIsPressed = true;
  bool _resetIsPressed = true;
  String _stopTime = '00:00:00';
  final _duration = const Duration(seconds: 1);

  Stopwatch get stopwatch => _stopwatch;
  bool get startIsPressed => _startIsPressed;
  bool get stopIsPressed => _stopIsPressed;
  bool get resetIsPressed => _resetIsPressed;
  String get stopTime => _stopTime;

  void startTimer() {
    setState(ViewState.Busy);

    Timer(_duration, keepRunning);

    notifyListeners();
    setState(ViewState.Idle);
  }

  void keepRunning() {
    setState(ViewState.Busy);

    if(_stopwatch.isRunning) {
      startTimer();
    }

    _stopTime = _stopwatch.elapsed.inHours.toString().padLeft(2, '0') + ':'
                + (_stopwatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') + ':'
                + (_stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');

    notifyListeners();
    setState(ViewState.Idle);
  }

  void startStopwatch() {
    setState(ViewState.Busy);

    _stopIsPressed = false;
    _startIsPressed = false;

    _stopwatch.start();

    startTimer();

    notifyListeners();
    setState(ViewState.Idle);
  }

  void stopStopwatch() {
    setState(ViewState.Busy);

    _stopIsPressed = true;
    _resetIsPressed = false;

    _stopwatch.stop();

    notifyListeners();
    setState(ViewState.Idle);
  }

  void resetStopwatch() {
    setState(ViewState.Busy);

    _startIsPressed = true;
    _resetIsPressed = true;

    _stopwatch.reset();

    _stopTime = "00:00:00";

    notifyListeners();
    setState(ViewState.Idle);
  }

}