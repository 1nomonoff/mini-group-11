import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: context.bodyMedium.copyWith(color: AppColors.black1),
          ),
          TextSpan(
            text: ' *',
            style: context.bodyMedium.copyWith(color: AppColors.red),
          ),
          TextSpan(
            text: ':',
            style: context.bodyMedium.copyWith(color: AppColors.black1),
          ),
        ],
      ),
    );
  }
}
