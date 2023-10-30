import 'package:attandence_app/pages/maps.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                // Logo perusahaan di bawah App Bar
                Image.asset(
                  'lib/images/logo.png', // Ganti dengan path logo perusahaan Anda
                  width: 100.0,
                  height: 100.0,
                ),
                Maps(),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue, // Warna latar belakang
                    ),
                    child: Center(
                      child: Container(
                        height: 250,
                        width: 300,
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white, // Warna kontainer profil
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // Keterangan profil
                            Text(
                              'Selamat Datang!',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
          
                            Icon(
                              Icons.person_2_rounded,
                              size: 80,
                            ),
          
                            SizedBox(height: 20),
          
                            Text(
                              'Devi Ska',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
          
                            SizedBox(height: 20),
          
                            Text(
                              "Web Developer",
                            ),
          
                            SizedBox(height: 20),
          
          
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
