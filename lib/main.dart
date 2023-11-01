import 'package:attandence_app/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/': (context) => const LiveAttendence(),
      //   '/clock-in': (context) => const ClockIn(),
      //   '/clock-out': (context) => const ClockOut(), // Jika ada halaman ClockOut juga
      // },
      // home: Dashboard()
      // home: HomeHiFi()
      // home: ProfilKaryawan()
      // home: LiveAttendence()
      // home: Settings()
      // home: InformasiPribadi()
      // home: BottomNavBar()
      home: BottomNavigation(),


    );
  }
}
