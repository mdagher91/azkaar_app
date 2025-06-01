import 'package:azkaar_app/constants/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اذكار', style: TextStyle(color: Colors.white)),
        backgroundColor: defaultColor,
      ),

      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.blueGrey,
              clipBehavior: Clip.antiAlias,
              key: key,
              elevation: 2,
            ),
          ],
        ),
      ),
    );
  }
}
