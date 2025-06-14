import 'package:azkaar_app/layout/home_page.dart';
import 'package:azkaar_app/models/size_config.dart';
import 'package:azkaar_app/shared/componentes/bottom_nav_bar.dart';
import 'package:azkaar_app/modules/azkar_alsabah.dart';
import 'package:azkaar_app/modules/setings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(),
      home: const SizeConfigInit(child: MainWrapper()),
    );
  }
}

class SizeConfigInit extends StatelessWidget {
  final Widget child;
  const SizeConfigInit({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return child;
  }
}

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  MainWrapperState createState() => MainWrapperState();
}

class MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  // List of pages/screens in your app
  final List<Widget> _pages = [
    const HomePage(),
    const SetingsScreen(), // Example of another page
    // Add other pages here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
