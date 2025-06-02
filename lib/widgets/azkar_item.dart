import 'package:flutter/material.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: ListTile(
        title: Text('اذكار الصباح', style: TextStyle(color: Colors.white)),
        onTap: () {
          // Add navigation or action here
        },
      ),
    );
  }
}
