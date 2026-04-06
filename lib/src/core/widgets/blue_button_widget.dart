import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';
import 'package:mini_group_11/src/core/utils/text_style_extension.dart';

class BlueButtonWidget extends StatelessWidget {
  final Icon? icon;
  final String title;
  final VoidCallback onTap;
  const BlueButtonWidget({super.key, this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryblue,
        foregroundColor: AppColors.white,
        minimumSize: Size(120, 40),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Text(
        title,
        style: context.titleMedium.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
          fontSize: 13,
        ),
      ),
    );
  }
}
