import 'package:attandence_app/components/live_attendence.dart';
import 'package:attandence_app/components/history_attendence.dart';
import 'package:attandence_app/components/profile_bar.dart';
import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  @override
  _AbsensiState createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 27, 76, 117),
              Color.fromARGB(255, 147, 85, 255)
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                // profile
                ProfileBar(),

                SizedBox(height: 25),

                // live attendance
                LiveAttendence(),

                SizedBox(height: 10),

                // attendance history
                HistoryAttendence(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}