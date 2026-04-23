import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class ParagraphText extends StatelessWidget {
  const ParagraphText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: context.bodyMedium.copyWith(
          color: AppColors.darkgrey,
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }
}
