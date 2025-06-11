import 'package:azkaar_app/constants/color.dart';
import 'package:azkaar_app/models/size_config.dart';
import 'package:flutter/material.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              color: defaultColor,
              clipBehavior: Clip.antiAlias,
              elevation: 2,
              child: ListTile(
                title: Text(text, style: const TextStyle(color: Colors.white)),
                onTap: () {
                  // Add navigation or action here
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
