import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _buildSvgIcon('assets/Home.svg', selectedIndex == 0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildSvgIcon('assets/Calendar.svg', selectedIndex == 1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildSvgIcon('assets/Chat.svg', selectedIndex == 2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildSvgIcon('assets/Profile.svg', selectedIndex == 3),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue[800],
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onItemTapped,
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
