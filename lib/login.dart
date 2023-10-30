import 'package:attandence_app/pages/home_page.dart';
import 'package:attandence_app/pages/maps.dart';
import 'package:flutter/material.dart';

class HomeHiFi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: 375,
            height: 743,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF537FE7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 56,
                  top: 237,
                  child: Container(
                    width: 221,
                    height: 64,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Presensi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Dashboard()), // Pindah ke halaman detail
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Background color
                          onPrimary: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Button border radius
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20), // Button padding
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 20), // Vertical spacing between buttons
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Dashboard()), // Pindah ke halaman detail
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Background color
                          onPrimary: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Button border radius
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20), // Button padding
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 115,
                  top: 829,
                  child: Container(
                    width: 166,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 4,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 55,
                  top: 301,
                  child: Text(
                    'Kehadiran Karyawan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 260,
                  top: 25,
                  child: Container(
                    width: 77,
                    height: 57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      width: 136,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/images/garudahrm.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
