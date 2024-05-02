
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;


  
   CustomNavBar({

    super.key,
    required this.onTabChange,

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: GNav(
        color: Colors.white,
        activeColor: Colors.blueGrey,
        tabBackgroundColor: Colors.blueGrey.shade100,
        padding: const EdgeInsets.all(16),
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.feed,
            text: 'Feeds',
          ),
          GButton(
            icon: Icons.person,
            text: 'Dashboard',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Setting',
          ),
        ],
      ),
    );
  }
}