import 'package:azkaar_app/constants/texts/azkar_alsabah_texts_list.dart';
import 'package:azkaar_app/shared/componentes/custom_button.dart';
import 'package:azkaar_app/modules/azkar_item.dart';
import 'package:flutter/material.dart';

class AzkarAlsabahPageView extends StatefulWidget {
  const AzkarAlsabahPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  @override
  State<AzkarAlsabahPageView> createState() => _AzkarAlsabahPageViewState();
}

class _AzkarAlsabahPageViewState extends State<AzkarAlsabahPageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        controller: widget.pageController,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: azkarAlsabahTexts.length,
        itemBuilder: (context, index) =>
            AzkarItem(text: azkarAlsabahTexts[index]),
        onPageChanged: widget.onPageChanged,
      ),
    );
  }
}
