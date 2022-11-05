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

  InkWell setCrimeContainer(Crime crime) {
    return InkWell(
      child: 
          Column(
          children: [
          Text(crime.get_title),
          Text(crime.get_date.toString().substring(0,19))
        ]),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(context) => CrimeWindow(crime: crime))).then((result) => setState(() {}));
        },
    ); 
  }

}


class CrimeWindow extends StatefulWidget {

  final Crime crime;

  const CrimeWindow({super.key, required this.crime});

  @override
  State<CrimeWindow> createState() => _CrimeWindowState();
}

class _CrimeWindowState extends State<CrimeWindow>
{
  
  late Crime crime = widget.crime;

  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text("Liste crimes")),
      body: Column(children: [
        const Text("Titre"),
        TextField(
          controller: TextEditingController(text: crime.get_title),
          onChanged: (text){
            crime.set_title = text;
          },
            decoration: const  InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        const Text("Détails"),
        Text(crime.get_date.toString()),
        CheckboxListTile(
        title: const Text("Résolu"),
        value: crime.get_solved, 
        onChanged:(bool? value) {
          setState(() {
           crime.set_solved(value);
        });
      },
        )
      ]),
    );
  }
}


