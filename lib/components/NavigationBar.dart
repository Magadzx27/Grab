import 'package:flutter/material.dart';
import 'package:grab/screen/accountPage.dart';
import 'package:grab/screen/activityPage.dart';
import 'package:grab/screen/financePage.dart';
import 'package:grab/screen/homePage.dart';
import 'package:grab/screen/messagesPage.dart';

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return const NavigationBar();
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      const HomePage(),
      const ActivityPage(),
      const financePage(),
      const messagesPage(),
      const AccpuntPage(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor:
            Colors.grey, // Set the unselected item color if needed
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _onNavItemTapped;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activity',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Finance',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
