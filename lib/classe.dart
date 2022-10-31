import 'package:uuid/uuid.dart';

class Crime
{
late String _title;
late bool _solved;
late final _date;
late var _id;

User() {
  _title = "Titre par défaut";
  _id = const Uuid();
  final _date = DateTime.now();
  _solved = false;
}

String get get_title => _title;
get get_id => _id;
get get_date => _date;
bool get get_solved => _solved;

set set_title(String value) => _title = value;
set set_solved(bool value) => _solved = value;


}

class CrimeLab
{
  late List<Crime> _crimes;

  CrimeLab()
  {
    for(int i = 0; i < 10; i++) {
      Crime crime = Crime();
      crime.set_title = "Crime #$i";
      crime.set_solved = i % 2 == 0;
      _crimes.add(crime);
    }
  }
  
  List<Crime> get get_crimes => _crimes;
}