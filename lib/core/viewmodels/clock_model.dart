import 'package:clock/core/enums/viewstate.dart';
import 'package:clock/core/viewmodels/base_model.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class ClockModel extends BaseModel { // <-- extends ChangeNotifier

  DateTime _dateTime = DateTime.now();
  Timer _timer;
  String _hour = '0';
  String _minute = '0';
  String _dayPeriod = '';

  DateTime get dateTime => _dateTime;
  Timer get timer => _timer;
  String get hour => _hour;
  String get minute => _minute;
  String get dayPeriod => _dayPeriod;

  void updateTime() {
    setState(ViewState.Busy);

    _dateTime = DateTime.now();
    _hour = DateFormat('h').format(_dateTime);
    _minute = DateFormat('mm').format(_dateTime);
    
    var _twentyFourHour = DateFormat('HH').format(_dateTime);
    int _num = int.parse(_twentyFourHour);

    if(_num >= 12) {
      _dayPeriod = 'PM';
    } else {
      _dayPeriod = 'AM';
    }

    _timer = Timer(
        Duration(minutes: 1) -
            Duration(seconds: _dateTime.second) -
            Duration(milliseconds: _dateTime.millisecond),
        updateTime,
      );
      notifyListeners();

    setState(ViewState.Idle);
  }
}