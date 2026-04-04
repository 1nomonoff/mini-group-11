import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class InfoExpansionText extends StatelessWidget {
  const InfoExpansionText({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: context.bodyMedium.copyWith(color: AppColors.grey2, fontSize: 15),
      ),
    );
  }
}
