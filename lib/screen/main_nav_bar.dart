import 'package:flutter/material.dart';
import 'package:meditation_app/screen/home_screen.dart';
import 'package:meditation_app/screen/meditate_screen.dart';
import 'package:meditation_app/screen/music_screen.dart';
import 'package:meditation_app/screen/profile_screen.dart';
import 'package:meditation_app/screen/sleep_page_screen.dart';

class MainNavBar extends StatefulWidget {
  static const String name = '/main-nav-bar';

  @override
  _MainNavBarState createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {

  int _selectedIndex = 0;
  final List<Color> _pagesColors = 
      [
        Colors.white,
        Color(0xFF03174C),
        Colors.white,
        Color(0xFF03174C),
        Colors.white,
      ];
  final List<Widget> _pages = [
    HomeScreen(),
    SleepPageScreen(),
    MeditateScreen(),
    MusicScreen(),
    ProfileScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: _pagesColors[_selectedIndex],
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: 48,
                  height: 48,
            decoration: BoxDecoration(
              color: _selectedIndex == 0 ? Color(0xFF8E97FD) : Colors.transparent,
              borderRadius: BorderRadius.circular(20),),
                  child: Center(
                    child: Image.asset(
                      'assets/images/home_icon.png',
                      width: 22,
                      height: 22,
                      color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1 ? Color(0xFF8E97FD) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/chad_icon.png',
                      width: 22,
                      height: 22,
                      color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: 'Sleep',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2 ? Color(0xFF8E97FD) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/meditate_icon.png',
                      width: 22,
                      height: 22,
                      color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: 'Meditate',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 3 ? Color(0xFF8E97FD) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/music_icon.png',
                      width: 22,
                      height: 22,
                      color: _selectedIndex == 3 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: 'Music',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 4 ? Color(0xFF8E97FD) : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/profile_icon.png',
                      width: 22,
                      height: 22,
                      color: _selectedIndex == 4 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}