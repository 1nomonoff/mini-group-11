
import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class XitWidget extends StatelessWidget {
  const XitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 37,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.orange, width: 2),
      ),
      child: Center(
        child: Text(
          'ХИТ',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: AppColors.orange,
          ),
        ),
      ),
    );
  }
}
