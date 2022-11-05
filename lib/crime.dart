import 'package:uuid/uuid.dart';

class Crime
{
late String _title;
late bool _solved;
late DateTime _date;
//late var _id;

Crime() {
  //_id = const Uuid();
}


String get get_title => _title;
//get get_id => _id;
DateTime get get_date => _date;
bool? get get_solved => _solved;

set set_title(String value) => _title = value;
//set set_solved(bool value) => _solved = value;
//set set_date(DateTime value) => _date = value;

  void set_date(DateTime dateTime) {
    this._date = dateTime;
  }

  void set_solved(bool? value) {_solved = value!;}
}
