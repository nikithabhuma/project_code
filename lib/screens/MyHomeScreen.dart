import 'package:diginova/screens/NotificationScreen.dart';
import 'package:diginova/screens/chat/RecentChatScreen.dart';
import 'package:diginova/screens/home/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:diginova/screens/home/Home.dart';
import 'package:diginova/screens/home/Calender.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeP(),
    Calender(),
    RecentChatScreen(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        // Use Navigator to manage navigation stack
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => _widgetOptions.elementAt(_selectedIndex),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/Home.svg', _selectedIndex == 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/Calendar.svg', _selectedIndex == 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/Chat.svg', _selectedIndex == 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildSvgIcon('assets/Profile.svg', _selectedIndex == 3),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildSvgIcon(String assetName, bool isSelected) {
    return SvgPicture.asset(
      assetName,
      color: isSelected ? Colors.blue[800] : Colors.grey,
      width: 24,
      height: 24,
    );
  }
}
