import 'package:attandence_app/pages/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 1000,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.person_3_outlined),
                iconColor: Colors.white,
                title: Text('Informasi Pribadi'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              Divider(
                thickness: 2,
              ),

              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.phone),
                iconColor: Colors.white,
                title: Text('Web Admin'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              Divider(
                thickness: 2,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.developer_mode),
                iconColor: Colors.white,
                title: Text('Pengembangan Aplikasi'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              Divider(
                thickness: 2,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.developer_mode),
                iconColor: Colors.white,
                title: Text('Hubungi Kami'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              Divider(
                thickness: 2,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.developer_mode),
                iconColor: Colors.white,
                title: Text('Kebijakan Aplikasi'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
              Divider(
                thickness: 2,
              ),
              ListTile(
                tileColor: Color.fromARGB(255, 27, 76, 117),
                leading: Icon(Icons.developer_mode),
                iconColor: Colors.white,
                title: Text('Tentang Aplikasi'),
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
        ),
      );
  }
}