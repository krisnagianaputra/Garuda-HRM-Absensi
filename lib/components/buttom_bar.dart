import 'package:attandence_app/pages/detail.dart';
import 'package:attandence_app/pages/home_page.dart';
import 'package:attandence_app/pages/menu.dart';
import 'package:flutter/material.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({Key? key}) : super(key: key);

  @override
  _ButtonNavigationState createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _selectedIndex = 1;

  void _navigateButtomBar(int index) {
    setState(
      () {
        _selectedIndex = index;
        if (_selectedIndex == 2) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Menu(); // MenuContent is the content of your ModalBottomSheet
            },
          );
        } else {
          // Navigate to the selected page
          _selectedIndex = index;
        }
      },
    );
  }

  final List<Widget> _pages = [
    const Detail(),
    Dashboard(),
    Dashboard()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(225, 13, 99, 176),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateButtomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.details_outlined),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
