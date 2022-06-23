import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
    int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
  
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        //navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label: 'Near By',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: 'Cart',
            backgroundColor: Colors.red
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: 'Account',
          backgroundColor: Colors.amber
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap:
       _onItemTapped,
    );
  }
  
  // void navigateToScreens(int index) {}

  
}
