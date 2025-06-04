import 'package:azkaar_app/constants/color.dart';
import 'package:azkaar_app/shared/componentes/bottom_nav_bar.dart';
import 'package:azkaar_app/widgets/azkar_item.dart';
import 'package:azkaar_app/shared/componentes/custom_button.dart';
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
        title: Center(
          child: Text('اذكار', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: defaultColor,
      ),
      body: PageView(
        children: [
          Column(
            children: [
              Spacer(),
              Row(
                children: [
                  CustomButton(
                    text: 'أذكــار الــمـسـاء',
                    icon: Icons.nights_stay_outlined,
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  CustomButton(
                    text: 'أذكــار الــصـــباح',
                    icon: Icons.sunny,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(width: 15),
              Row(
                children: [
                  CustomButton(
                    text: 'أذكــار الــنــوم',
                    icon: Icons.bed_rounded,
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  CustomButton(
                    text: 'جوامـع الـكلـم',
                    icon: Icons.menu_book_rounded,
                    onPressed: () {},
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
