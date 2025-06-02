import 'package:azkaar_app/constants/color.dart';
import 'package:azkaar_app/widgets/azkar_item.dart';
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
      body: PageView(
        children: [
          Column(
            children: [
              SizedBox(height: 15),
              AzkarItem(),
              AzkarItem(),
              AzkarItem(),
              AzkarItem(),
            ],
          ),
        ],
      ),
    );
  }
}
