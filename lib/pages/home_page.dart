import 'package:attandence_app/components/live_attendence.dart';
import 'package:attandence_app/components/history_attendence.dart';
import 'package:attandence_app/components/profile_bar.dart';
import 'package:attandence_app/pages/detail.dart';
import 'package:attandence_app/pages/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // ignore: unused_field
  int _currentIndex = 1; // Indeks tab default adalah 1 (home)

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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

                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.details),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Detail()), // Pindah ke halaman detail
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _onTabTapped(1); // Ganti ke indeks halaman home
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(70)),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.person_3_outlined),
                            iconColor: Colors.white,
                            title: Text('Informasi Pribadi'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          Divider(thickness: 2,),

                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.phone),
                            iconColor: Colors.white,
                            title: Text('Web Admin'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          Divider(thickness: 2,),
                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.developer_mode),
                            iconColor: Colors.white,
                            title: Text('Pengembangan Aplikasi'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          Divider(thickness: 2,),
                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.developer_mode),
                            iconColor: Colors.white,
                            title: Text('Hubungi Kami'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          Divider(thickness: 2,),
                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.developer_mode),
                            iconColor: Colors.white,
                            title: Text('Kebijakan Aplikasi'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          Divider(thickness: 2,),
                          ListTile(
                            tileColor :Color.fromARGB(255, 27, 76, 117),
                            leading: Icon(Icons.developer_mode),
                            iconColor: Colors.white,
                            title: Text('Tentang Aplikasi'),
                            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            onTap: () {
                              Navigator.pop(context); // Close the bottom sheet
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Profile()), // Navigate to edit profile page
                              );
                            },
                          ),
                          // Add more list items as needed
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
