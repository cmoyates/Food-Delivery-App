import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500
          )
        ),
        indicatorColor: const Color.fromARGB(255, 247, 204, 139)
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: Colors.orange,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() => selectedIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded), 
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search_rounded), 
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Icons.replay_rounded), 
            label: "Recent",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded), 
            label: "Profile",
          ),
        ]
      ),
    );
  }
}