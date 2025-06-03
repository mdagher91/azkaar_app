import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.favorite_border),
        //   label: 'Favorites',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.settings_outlined),
        //   label: 'Settings',
        // ),
      ],
    );
  }
}
