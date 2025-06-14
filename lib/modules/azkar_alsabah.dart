import 'package:azkaar_app/constants/color.dart';
import 'package:azkaar_app/constants/texts/azkar_alsabah_texts_list.dart';
import 'package:azkaar_app/shared/componentes/custom_button.dart';
import 'package:azkaar_app/modules/azkar_alsabah_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AzkarAlsabah extends StatefulWidget {
  const AzkarAlsabah({super.key});

  @override
  State<AzkarAlsabah> createState() => _AzkarAlsabahState();
}

class _AzkarAlsabahState extends State<AzkarAlsabah> {
  final PageController pageController = PageController();
  final int count = azkarAlsabahTexts.length;
  int currentPage = 0;

  void goToNextPage() {
    if (currentPage < count - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تم الانتهاء من أذكار الصباح')),
      );
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('أذكار الصباح')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: count,
              effect: const WormEffect(
                dotWidth: 16,
                activeDotColor: defaultColor,
              ),
              onDotClicked: (index) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: AzkarAlsabahPageView(
                pageController: pageController,
                onPageChanged: (index) {
                  setState(() => currentPage = index);
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                if (currentPage > 0)
                  CustomButton(text: 'السابق', onPressed: goToPreviousPage),
                const Spacer(),
                CustomButton(
                  text: currentPage < count - 1 ? 'التالي' : 'تم',
                  onPressed: goToNextPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
