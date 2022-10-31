import 'package:uuid/uuid.dart';

class Crime
{
late String _title;
late bool _solved;
late DateTime _date;
late var _id;

Crime() {
  _id = const Uuid();
  final _date = DateTime.now();
}

String get get_title => _title;
get get_id => _id;
get get_date => _date;
bool? get get_solved => _solved;

set set_title(String value) => _title = value;
set set_solved(bool value) => _solved = value;

}
