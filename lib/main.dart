import 'package:flutter/material.dart';
import 'package:flutter_cours_2022/crime.dart';
import 'package:flutter_cours_2022/crime_lab.dart';

void main() =>
  runApp(const MaterialApp(
    home: CrimeList(),
));


class CrimeList extends StatefulWidget {
  const CrimeList({super.key});


  @override
  State<CrimeList> createState() => _CrimeListState();
}

class _CrimeListState extends State<CrimeList> {

   CrimeLab crimeLab = CrimeLab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste crimes"),
      ),
      body: Column(
        children: crimeLab.get_crimes.map((crime) {
        return setCrimeContainer(crime);
      }).toList(),
      ),
    );
  }

  Column setCrimeContainer(Crime crime) {
    return  Column(
        children: [
          Text(crime.get_title),
          Text(crime.get_date.toString().substring(0,19))
        ]);
    }
}


