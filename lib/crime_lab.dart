import 'package:flutter_cours_2022/crime.dart';

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