import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 47, 171, 70),
        child: Center(
          child: Text(
            "HALAMAN UTAMA",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}