import 'package:flutter/material.dart';
import 'package:Plantify/home.dart';
import 'package:Plantify/main.dart';
import 'package:Plantify/explore.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 1;
  final List title = ['Info', 'Identify', 'Explore'];
  final List<Widget> tabs = [OnBoardingPage(), MyImagePicker(), Explore()];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.teal[300],
            title: Text(
              title[_currentIndex],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal[300],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }, // new
          items: [
            BottomNavigationBarItem(
              title: Text('Info'),
              icon: Icon(Icons.info),
            ),
            BottomNavigationBarItem(
              title: Text('Identify'),
              icon: Icon(Icons.camera),
            ),
            BottomNavigationBarItem(
              title: Text('Explore'),
              icon: Icon(Icons.library_books),
            ),
          ],
        ));
  }
}
