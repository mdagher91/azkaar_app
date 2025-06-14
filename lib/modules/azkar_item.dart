import 'package:azkaar_app/constants/color.dart';
import 'package:flutter/material.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 250, // Adjust as needed
      ),
      child: Card(
        color: defaultColor,
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        child: InkWell(
          onTap: () {
            // Optional: handle tap
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
