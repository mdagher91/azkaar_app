import 'package:azkaar_app/constants/color.dart';
import 'package:azkaar_app/shared/componentes/bottom_nav_bar.dart';
import 'package:azkaar_app/shared/componentes/custom_button.dart';
import 'package:azkaar_app/modules/azkar_alsabah.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('اذكار', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: defaultColor,
      ),
      body: PageView(
        children: [
          Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  CustomButton(
                    text: 'أذكــار الــمـسـاء',
                    icon: Icons.nights_stay_outlined,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 15),
                  CustomButton(
                    text: 'أذكــار الــصـــباح',
                    icon: Icons.sunny,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AzkarAlsabah(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Row(
                children: [
                  CustomButton(
                    text: 'أذكــار الــنــوم',
                    icon: Icons.bed_rounded,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 15),
                  CustomButton(
                    text: 'جوامـع الـكلـم',
                    icon: Icons.menu_book_rounded,
                    onPressed: () {},
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
