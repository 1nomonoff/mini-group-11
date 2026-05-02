
import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class UniversalWidget extends StatelessWidget {
  final String title;
  const UniversalWidget({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
    
      label: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryblue,
        foregroundColor: AppColors.white,
        minimumSize: Size(300, 62),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
      ),
    );
  }
}
