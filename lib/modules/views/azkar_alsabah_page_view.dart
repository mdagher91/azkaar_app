import 'package:azkaar_app/constants/texts/azkar_alsabah_texts_list.dart';
import 'package:azkaar_app/modules/azkar_item.dart';
import 'package:azkaar_app/shared/componentes/custom_button.dart';
import 'package:flutter/material.dart';

class AzkarAlsabahPageView extends StatefulWidget {
  const AzkarAlsabahPageView({super.key});

  @override
  State<AzkarAlsabahPageView> createState() => _AzkarAlsabahPageViewState();
}

class _AzkarAlsabahPageViewState extends State<AzkarAlsabahPageView> {
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 250,
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              AzkarItem(text: azkarAlsabahTexts[index]),
          itemCount: azkarAlsabahTexts.length,
        ),
      ),
    );
  }
}
