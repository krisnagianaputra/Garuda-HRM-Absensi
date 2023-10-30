import 'package:flutter/material.dart';
import 'package:attandence_app/pages/maps.dart';

class ClockIn extends StatelessWidget {
  const ClockIn({Key? key});

  void _showLocationDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 400, // Sesuaikan tinggi pop-up sesuai kebutuhan
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Detail Alamat Lokasi Check In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Tambahkan widget lain untuk menampilkan detail alamat lokasi di sini
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ Color.fromARGB(255, 0, 40, 171), Color.fromARGB(255, 127, 72, 223)], // Warna latar belakang (dari atas ke bawah)
          ),
        ),
      child: Column(
        children: [
          const Maps(),
          const SizedBox(height: 60),
          // Menampilkan pop-up ketika tombol "Check In" ditekan
          ElevatedButton(
            onPressed: () {
              _showLocationDetails(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 25, 118, 210), // Warna latar belakang tombol
            ),
            child: const Text(
              'Check In',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
