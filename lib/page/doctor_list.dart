import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../core/color.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    List<Doctor> doctors = [
      Doctor(name: "Dr. Sanjay Gupta", rating: 3.8, speciality: "Diabetes"),
      Doctor(name: "Dr. Nina Singh", rating: 4.4, speciality: "Diabetes"),
      Doctor(
          name: "Dr. Abhishek Singhania", rating: 3.9, speciality: "Diabetes"),
      Doctor(name: "Dr. Vakul Patel", rating: 4.6, speciality: "Diabetes"),
      Doctor(name: "Dr. Aditya Mehta", rating: 4.8, speciality: "Diabetes"),
    ];

    var seen = Set<String>();
    List<Doctor> uniquelist =
        doctors.where((doctor) => seen.add(doctor.name)).toList();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Doctors'),
          elevation: 0,
          backgroundColor: white,
          foregroundColor: black,
          leadingWidth: 40,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: uniquelist.map((studentone) {
              return Container(
                  child: Card(
                      child: ListTile(
                leading: Text(
                  '${studentone.rating.toString()}★',
                  style: const TextStyle(fontSize: 25),
                ),
                title: Text(studentone.name),
                subtitle: Text('Speciality: ${studentone.speciality}'),
              )));
            }).toList(),
          ),
        ));
  }
}

class Doctor {
  String name, speciality;
  double rating;

  Doctor({required this.name, required this.rating, required this.speciality});
}
