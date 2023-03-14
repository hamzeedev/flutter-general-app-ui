import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mini/customs/customDrawer.dart';
import 'package:mini/customs/customNavBar.dart';
import 'package:mini/screens/dashboardScreen.dart';
import 'package:mini/screens/feedsScreen.dart';
import 'package:mini/screens/mainScreen.dart';
import 'package:mini/screens/settingScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected index
  // when the user taps on the bottom nav bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // home page
    const MainScreen(),

    // shop page
    const FeedsScreen(),

    // profile page
    const DashboardScreen(),

    // setting page
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade800,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'A P P',
          style: TextStyle(color: Colors.blueGrey.shade800),
        ),
      ),
      drawer: const CustomDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}