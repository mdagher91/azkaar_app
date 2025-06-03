import 'package:azkaar_app/layout/home_page.dart';
import 'package:azkaar_app/models/size_config.dart';
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
      home: const SizeConfigInit(child: HomePage()),
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
