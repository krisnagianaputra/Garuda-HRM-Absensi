import 'package:attandence_app/pages/home_page.dart';
// import 'package:attandence_app/pages/profile_detail.dart';

// import 'package:attandence_app/components/buttom_bar.dart';
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
      home: Dashboard()
      // home: ProfileDetail()
      // home: MyBottomNavigationBar()

    );
  }
}
